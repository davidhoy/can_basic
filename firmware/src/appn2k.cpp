
#define USE_N2K_CAN 9           // for use with PIC32MX-based boards
#include "NMEA2000_CAN.h"       // This will automatically choose right CAN library and create suitable NMEA2000 object
#include "N2kMessages.h"
#include "N2kDeviceList.h"
#include "N2KMessageHandler.h"
#include "N2kGroupFunctionDefaultHandlers.h"
#include "appn2k.h"


// List here messages your device will transmit/receive.
const unsigned long TransmitMessages[] PROGMEM = {127505L,  // Fluid Level
                                                  127506L,  // DC Status
                                                  127508L,  // Battery Status
                                                  127513L,  // Battery Config
                                                  127510L,  // Charger Config
                                                  127507L,  // Charger Status
                                                  127489L,  // Engine Parameters
                                                  127750L,  // Converter (inverter/charger) status)
                                                  0};
const unsigned long ReceiveMessages[]  PROGMEM = {0};

// ---  Example of using PROGMEM to hold Configuration information.  However, doing this will prevent any updating of
//      these details outside of recompiling the program.
const char ManufacturerInformation  [] PROGMEM = "ElectroMaax, Inc. http://www.electromaax.com"; 
const char InstallationDescription1 [] PROGMEM = "Nooobody expects..."; 
const char InstallationDescription2 [] PROGMEM = "...the Spanish Inquisition!"; 


typedef struct {
    uint32_t    PGN;
    uint32_t    period;
    uint32_t    lastSent;;
    void (*sendFunc)(uint8_t destination, int device);
} tNMEA2000SupportedMessage;

static void SendN2kFluidLevel(uint8_t destination, int device);
static void SendN2kBatteryStatus(uint8_t destination, int device);
static void SendN2kDCStatus(uint8_t destination, int device);
static void SendN2kBatteryConfig(uint8_t destination, int device);
static void SendN2kChargerConfig(uint8_t destination, int device);
static void SendN2kChargerStatus(uint8_t destination, int device);
static void SendN2kEngineParameters(uint8_t destination, int device);
static void SendN2kConverterStatus(uint8_t destination, int device);

tNMEA2000SupportedMessage supportedMessages[] = {
    { 127505L, 2500, 0, SendN2kFluidLevel       },
    { 127508L, 1500, 0, SendN2kBatteryStatus    },
    { 127506L, 1000, 0, SendN2kDCStatus         },
    { 127513L, 0,    0, SendN2kBatteryConfig    },
    { 127510L, 0,    0, SendN2kChargerConfig    },
    { 127507L, 1500, 0, SendN2kChargerStatus    },
    { 127489L, 500,  0, SendN2kEngineParameters },
    { 127750L, 1500, 0, SendN2kConverterStatus  },
    { 0,       0,    0, NULL                    }
};


typedef struct {
  unsigned long PGN;
  void (*Handler)(const tN2kMsg &N2kMsg); 
} tNMEA2000Handler;

tNMEA2000Handler NMEA2000Handlers[]={
 //   {127505L, &FluidLevel },
    {0,       0}
};


static void SendN2kBatteryStatus(uint8_t destination, int device) {
    tN2kMsg N2kMsg;
    
    // PGN 127508
    SetN2kDCBatStatus(N2kMsg,
                      1,                // Battery instance
                      13.87,            // Battery voltage
                      5.12,             // Battery current 
                      CToKelvin(35.12), // Battery temperature
                      1);               // SID
    N2kMsg.Destination = destination;
    NMEA2000.SendMsg(N2kMsg, device);
}

static void SendN2kDCStatus(uint8_t destination, int device) {  
    tN2kMsg N2kMsg;
    
    // PGN 127506
    SetN2kDCStatus(N2kMsg,
                   1,                   // SID
                   1,                   // DC Instance
                   N2kDCt_Battery,      // DC Type
                   56,                  // State Of Charge, %
                   92,                  // State Of Health, %
                   38500,               // Time Remaining, minutes
                   0.012,               // Ripple Voltage
                   1000.0);             // Capacity    
    N2kMsg.Destination = destination;
    NMEA2000.SendMsg(N2kMsg, device);
}

static void SendN2kBatteryConfig(uint8_t destination, int device) {
    tN2kMsg N2kMsg;
    
    // PGN 127513
    SetN2kBatConf(N2kMsg,
                  1,                    // Battery Instance
                  N2kDCbt_AGM,          // Battery Type
                  N2kDCES_No,           // Supports Equalization
                  N2kDCbnv_12v,         // Nominal Voltage
                  N2kDCbc_LeadAcid,     // Battery Chemistry
                  AhToCoulomb(420),     // Battery Capacity
                  53,                   // Temperature Coefficient
                  1.251,                // Peukert Exponent
                  75);                  // Charge Efficieny Factor
    N2kMsg.Destination = destination;
    NMEA2000.SendMsg(N2kMsg, device);
}

static void SendN2kFluidLevel(uint8_t destination, int device) {
    tN2kMsg N2kMsg;
    static double fluidLevel = 0.0;
    static int increment = 5;
  
    // PGN 127505
    SetN2kFluidLevel(N2kMsg,
                     5,                 // Fluid Level Instance
                     N2kft_BlackWater,  // Fluid Type
                     fluidLevel,        // Tank Level, %
                     galToCuM(100.0));  // Tank Capacity
    N2kMsg.Destination = destination;
    NMEA2000.SendMsg(N2kMsg, device); 
    
    fluidLevel += increment;
    if (fluidLevel >= 100 || fluidLevel <= 0)
        increment *= -1;
}

static void SendN2kChargerConfig(uint8_t destination, int device) {
    tN2kMsg N2kMsg;
    
    // PGN 127510
    SetN2kChargerConfigStatus(N2kMsg,
                             1,                     // Charger instance
                             1,                     // Battery instance
                             N2kOnOff_Enabled,      // Charger enabled/disabled
                             100,                   // Charger Current Limit, %
                             N2kCA_TwoStage_NoFloat,// Charger algorithm
                             N2kCM_Standalone,      // Charger Mode
                             N2kCET_Warm,           // Charger Estimated Temperature
                             N2kOnOff_Disabled,     // Equalization One Time enable/disable
                             N2kOnOff_Disabled,     // Over charge enable/disable
                             120);                  // Equalization time, in minutes
    N2kMsg.Destination = destination;
    NMEA2000.SendMsg(N2kMsg, device);
}

static void SendN2kChargerStatus(uint8_t destination, int device) {
    tN2kMsg N2kMsg;
    
    // PGN 127507
    SetN2kChargerStatus(N2kMsg, 
                        1,                  // Charger instance
                        1,                  // Battery Instance,
                        N2kCS_Bulk,         // Charger State
                        N2kCM_Standalone,   // Charger Mode
                        N2kOnOff_On,        // Charger Enable/Disable
                        N2kOnOff_Off,       // Equalization Pending
                        N2kDoubleNA);       // Equalization Time Remaining
    N2kMsg.Destination = destination;
    NMEA2000.SendMsg(N2kMsg, device);
}

static void SendN2kEngineParameters(uint8_t destination, int device) {
    tN2kMsg N2kMsg;
    
    // PGN 127489
    SetN2kEngineDynamicParam(N2kMsg, 
                             1,             // EngineInstance,
                             N2kDoubleNA,   // EngineOilPress
                             N2kDoubleNA,   // EngineOilTemp,
                             N2kDoubleNA,   // EngineCoolantTemp, 
                             16.7,          // AlternatorVoltage,
                             N2kDoubleNA,   // FuelRate,
                             N2kDoubleNA,   // EngineHours,
                             N2kDoubleNA,   // EngineCoolantPress
                             N2kDoubleNA,   // EngineFuelPress
                             N2kInt8NA,     // EngineLoad
                             N2kInt8NA,     // EngineTorque=N2kInt8NA,
                             false,         // flagCheckEngine=false,   
                             false,         // flagOverTemp=false,
                             false,         // flagLowOilPress=false,
                             false          // flagLowOilLevel=false,
                     //  bool flagLowFuelPress=false,      bool flagLowSystemVoltage=false, bool flagLowCoolantLevel=false,     bool flagWaterFlow=false,
                     //  bool flagWaterInFuel=false,       bool flagChargeIndicator=false,  bool flagPreheatIndicator=false,    bool flagHighBoostPress=false,
                     //  bool flagRevLimitExceeded=false,  bool flagEgrSystem=false,        bool flagTPS=false,                 bool flagEmergencyStopMode=false,
                     //  bool flagWarning1=false,          bool flagWarning2=false,         bool flagPowerReduction=false,      bool flagMaintenanceNeeded=false,
                     //  bool flagEngineCommError=false,   bool flagSubThrottle=false,      bool flagNeutralStartProtect=false, bool flagEngineShuttingDown=false) {
                            );
    N2kMsg.Destination = destination;
    NMEA2000.SendMsg(N2kMsg, device);
}

static void SendN2kConverterStatus(uint8_t destination, int device) {
    tN2kMsg N2kMsg;
    
    // PGN 127750
    SetN2kConverterStatus(N2kMsg, 
                          1,                // Sequence ID
                          1,                // Connection Number
                          N2kCOS_Bulk,      // Converter Operating State
                          N2kCTS_OK,        // Converter Temperature State
                          N2kCOLS_OK,       // Converter Overload State
                          N2kCLVS_OK,       // Converter Low Voltage State
                          N2kCRS_OK);       // Converter Ripple State 
    N2kMsg.Destination = destination;
    NMEA2000.SendMsg(N2kMsg, device);
}


uint32_t GetSerialNbr() {
    // TODO: get actual board serial number 
    return 42000123UL;
}

// TODO: save ISO address in non-volatile memory
static uint8_t isoAddress = 0x00;

uint8_t getIsoAddress(void) {
    return isoAddress; 
}

void setIsoAddress(uint8_t _isoAddress) { 
    isoAddress = _isoAddress;
} 


bool ISORequestHandler(unsigned long RequestedPGN, unsigned char Requester, int DeviceIndex) {
    bool ret = false;
    
    // Scan the list of PGNs we support to find a match
    for (int i = 0; i < supportedMessages[i].PGN != 0; i++) {
        if (supportedMessages[i].PGN == RequestedPGN) {
            // Found a match, go send this PGN
            supportedMessages[i].sendFunc(Requester, DeviceIndex);
            supportedMessages[i].lastSent = millis();
            ret = true;
            break;
        }
    }
    return ret;
}


void NMEA2000Setup(void) {
    
    // Set Product information
    NMEA2000.SetProductInformation("42",                    // Manufacturer's Model code
                                   NMEA2000_PID,            // Manufacturer's product code
                                   NMEA2000_Product_Name,   // Manufacturer's Model ID
                                   "1.0.42",                // Manufacturer's Software version code
                                   "1.0.42",                // Manufacturer's Model version
                                   1,                       // Load Equivalency
                                   2101,                    // N2k Version
                                   0);                      // Certification Level
    
    // Set device information
    uint32_t serialNbr = GetSerialNbr();
    NMEA2000.SetDeviceInformation(serialNbr,                // Unique number. Use e.g. Serial number.
                                  NMEA2000_Function_Code,   // Device function. See codes on http://www.nmea.org/Assets/20120726%20nmea%202000%20class%20&%20function%20codes%20v%202.00.pdf
                                  NMEA2000_Class_Code,      // Device class. See codes on http://www.nmea.org/Assets/20120726%20nmea%202000%20class%20&%20function%20codes%20v%202.00.pdf
                                  NMEA2000_VID              // Vendor ID                               
                                  );
    
    // Set Configuration information
    NMEA2000.SetProgmemConfigurationInformation(ManufacturerInformation,
                                                InstallationDescription1,
                                                InstallationDescription2);
    
    // Set up the NMEA2000 interface   
    NMEA2000.SetN2kCANSendFrameBufSize(150);                // Make send big enough for product info
    NMEA2000.SetN2kCANMsgBufSize(8);                        // 5 is enough to handle fast-packet messages
    NMEA2000.SetMode(tNMEA2000::N2km_NodeOnly,getIsoAddress()); // This mode allows bidirectional N2K communications
    NMEA2000.EnableForward(false);                          // Disable all message forwarding
    
    // Specify the messages we're interested in receiving and transmitting
    NMEA2000.ExtendTransmitMessages(TransmitMessages);
    NMEA2000.ExtendReceiveMessages(ReceiveMessages); 
    
    // Create message handler instance, and attach it
    NMEA2000.AttachMsgHandler(new tN2KMessageHandler(&NMEA2000));
    NMEA2000.SetISORqstHandler(ISORequestHandler); 
    
    // Start the NMEA2000 interface
    NMEA2000.Open();
}


void NMEA2000Loop(void) {
    // Read and process incoming NMEA 2000 messages
    NMEA2000.ParseMessages();

    // If ISO address has changed, save it in non-volatile memory
    if (NMEA2000.ReadResetAddressChanged()) {
        setIsoAddress(NMEA2000.GetN2kSource());
    }

    // Process periodic output messages
    uint32_t timeNow = millis();
    for (int i = 0; supportedMessages[i].PGN != 0; i++) {
        if (supportedMessages[i].period != 0) {
            uint32_t elapsed = timeNow - supportedMessages[i].lastSent;
            if (elapsed >= supportedMessages[i].period) {
                supportedMessages[i].sendFunc(0xFF, 0);    // Broadcast message
                supportedMessages[i].lastSent = timeNow;
            }
        }
    }
}
