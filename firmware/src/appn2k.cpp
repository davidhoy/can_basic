
#define USE_N2K_CAN 9           // for use with PIC32MX-based boards
#include "NMEA2000_CAN.h"       // This will automatically choose right CAN library and create suitable NMEA2000 object
#include "N2kMessages.h"
#include "N2kDeviceList.h"
#include "N2KMessageHandler.h"
#include "N2kGroupFunctionDefaultHandlers.h"
#include "appn2k.h"


// List here messages your device will transmit/receive.
const unsigned long TransmitMessages[] PROGMEM = {127506L,127508L,127513L,0};
const unsigned long ReceiveMessages[]  PROGMEM = {0};

// ---  Example of using PROGMEM to hold Configuration information.  However, doing this will prevent any updating of
//      these details outside of recompiling the program.
const char ManufacturerInformation  [] PROGMEM = "ElectroMaax, Inc. http://www.electromaax.com"; 
const char InstallationDescription1 [] PROGMEM = "Nooobody expects..."; 
const char InstallationDescription2 [] PROGMEM = "...the Spanish Inquisition!"; 


#define BatUpdatePeriod     1000
#define LevelUpdatePeriod   2500


typedef struct {
  unsigned long PGN;
  void (*Handler)(const tN2kMsg &N2kMsg); 
} tNMEA2000Handler;

void FluidLevel(const tN2kMsg &N2kMsg);
void WaterDepth(const tN2kMsg &N2kMsg);

tNMEA2000Handler NMEA2000Handlers[]={
    {127505L, &FluidLevel },
    {128267L, &WaterDepth },
    {0,       0}
};


static void SendN2kBattery(void) {
    static unsigned long TempUpdated=millis();
    tN2kMsg N2kMsg;

    if ( TempUpdated+BatUpdatePeriod<millis() ) {
        TempUpdated=millis();
        SetN2kDCBatStatus(N2kMsg,1,13.87,5.12,35.12,1);
        NMEA2000.SendMsg(N2kMsg);
        SetN2kDCStatus(N2kMsg,1,1,N2kDCt_Battery,56,92,38500,0.012,1000.0);
        NMEA2000.SendMsg(N2kMsg);
        SetN2kBatConf(N2kMsg,1,N2kDCbt_Gel,N2kDCES_Yes,N2kDCbnv_12v,N2kDCbc_LeadAcid,AhToCoulomb(420),53,1.251,75);
        NMEA2000.SendMsg(N2kMsg);
        //Serial.print(millis()); Serial.println(", Battery send ready");
//        BSP_LEDToggle(BSP_LED_2);
    }
}

static void SendN2kLevel(void) {
    static unsigned long LevelUpdated=millis();

    if ( LevelUpdated+LevelUpdatePeriod<millis() ) {
        tN2kMsg N2kMsg;
        LevelUpdated=millis();
        
        SetN2kFluidLevel(N2kMsg, 5, N2kft_Water, 100.0, 100.0);
        NMEA2000.SendMsg(N2kMsg);
    } 
}

void WaterDepth(const tN2kMsg &N2kMsg) {
    unsigned char SID;
    double DepthBelowTransducer;
    double Offset;

    if (ParseN2kWaterDepth(N2kMsg,SID,DepthBelowTransducer,Offset) ) {
      if (Offset>0) {
        //Serial.print("Water depth:");
      } else {
        //Serial.print("Depth below keel:");
      }
      //Serial.println(DepthBelowTransducer+Offset);
    }
}

void FluidLevel(const tN2kMsg &N2kMsg) {
    unsigned char Instance;
    tN2kFluidType FluidType;
    double Level=0;
    double Capacity=0;

    if (ParseN2kFluidLevel(N2kMsg,Instance,FluidType,Level,Capacity) ) {
      switch (FluidType) {
        case N2kft_Fuel:
          //Serial.print("Fuel level :");
          break;
        case N2kft_Water:
          //Serial.print("Water level :");
          break;
        case N2kft_GrayWater:
          //Serial.print("Gray water level :");
          break;
        case N2kft_LiveWell:
          //Serial.print("Live well level :");
          break;
        case N2kft_Oil:
          //Serial.print("Oil level :");
          break;
        case N2kft_BlackWater:
          //Serial.print("Black water level :");
          break;
      }
      //Serial.print(Level); Serial.print("%"); 
      //Serial.print(" ("); Serial.print(Capacity*Level/100); Serial.print("l)");
      //Serial.print(" capacity :"); Serial.println(Capacity);
    }
}

void HandleNMEA2000Msg(const tN2kMsg &N2kMsg) { 
  // Find handler
    LED2_Toggle();
    for (int i = 0; NMEA2000Handlers[i].PGN !=0; i++) {
        if (N2kMsg.PGN == NMEA2000Handlers[i].PGN) {
            NMEA2000Handlers[i].Handler(N2kMsg);
            break;
        }
    }
}

uint32_t GetSerialNbr() {
    return 12345;
}

bool ISORequestHandler(unsigned long RequestedPGN, unsigned char Requester, int DeviceIndex) {
    return false;
}

void NMEA2000Setup(void) {
    
    //char serialNbrStr[32];
    uint32_t serialNbr = GetSerialNbr();
    //snprintf(serialNbrStr, sizeof(serialNbrStr), "%lu", serialNbr);
    
    // Set Product information
    NMEA2000.SetProductInformation("42",                    // Manufacturer's Model code
                                   NMEA2000_PID,            // Manufacturer's product code
                                   NMEA2000_Product_Name,   // Manufacturer's Model ID
                                   "1.0.0.1",               // Manufacturer's Software version code
                                   "1.0.0.1",               // Manufacturer's Model version
                                   1,                       // Load Equivalency
                                   2101,                    // N2k Version
                                   0);                      // Certification Level
    
    // Set device information
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
    NMEA2000.SetMode(tNMEA2000::N2km_NodeOnly,0);      // This mode allows bidirectional N2K communications
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
    NMEA2000.ParseMessages();
}



