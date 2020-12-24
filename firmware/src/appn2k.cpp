
#define USE_N2K_CAN 9           // for use with PIC32MX-based boards
#include "NMEA2000_CAN.h"       // This will automatically choose right CAN library and create suitable NMEA2000 object
#include "N2kMessages.h"
#include "N2kDeviceList.h"
#include "N2KMessageHandler.h"
#include "appn2k.h"


// List here messages your device will transmit.
const unsigned long TransmitMessages[] PROGMEM={127505L,127506L,127508L,127513L,0};


// ---  Example of using PROGMEM to hold Configuration information.  However, doing this will prevent any updating of
//      these details outside of recompiling the program.
const char BatteryMonitorManufacturerInformation  [] PROGMEM = "ElectroMaax, Inc.  http://www.electromaax.com"; 
const char BatteryMonitorInstallationDescription1 [] PROGMEM = "Installation Desc 1"; 
const char BatteryMonitorInstallationDescription2 [] PROGMEM = "Installation Desc 2"; 


#define BatUpdatePeriod     1000
#define LevelUpdatePeriod   2500


tN2kDeviceList*     pN2kDeviceList = NULL;
tN2KMessageHandler  N2KMessageHandler(&NMEA2000);


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


void NMEA2000Setup(void) {
    
    // Set up the NMEA2000 interface   
    NMEA2000.SetN2kCANSendFrameBufSize(150);                // Make send big enough for product info
    NMEA2000.SetN2kCANMsgBufSize(8);                        // 5 is enough to handle fast-packet messages
    NMEA2000.SetMode(tNMEA2000::N2km_ListenAndNode,42);     // This mode allows bidirectional N2K communications
    NMEA2000.EnableForward(false);                          // Disable all message forwarding
    
    // Set Product information
    NMEA2000.SetProductInformation("42",                    // Manufacturer's Model serial code
                                   NMEA2000_PID,            // Manufacturer's product code
                                   NMEA2000_Product_Name,   // Manufacturer's Model ID
                                   "1.0.0.1",               // Manufacturer's Software version code
                                   "1.0.0.1",               // Manufacturer's Model version
                                   1,                       // Load Equivalency,
                                   1300,                    // N2k Version,
                                   0);                      // Certification Level,
    
    // Set Configuration information
    NMEA2000.SetProgmemConfigurationInformation(BatteryMonitorManufacturerInformation,
                                                BatteryMonitorInstallationDescription1,
                                                BatteryMonitorInstallationDescription2);
  
    // Set device information
    NMEA2000.SetDeviceInformation(0x12345678,               // Unique number. Use e.g. Serial number.
                                  NMEA2000_Function_Code,   // Device function. See codes on http://www.nmea.org/Assets/20120726%20nmea%202000%20class%20&%20function%20codes%20v%202.00.pdf
                                  NMEA2000_Class_Code,      // Device class. See codes on  http://www.nmea.org/Assets/20120726%20nmea%202000%20class%20&%20function%20codes%20v%202.00.pdf
                                  NMEA2000_VID              // Vendor ID                               
                                  );
    
    NMEA2000.ExtendTransmitMessages(TransmitMessages);
    
    pN2kDeviceList = new tN2kDeviceList(&NMEA2000);
    
    //NMEA2000.ExtendTransmitMessages(127505, 0);
                          
    // Start the NMEA2000 interface
    NMEA2000.Open();
}

void NMEA2000Loop(void) {
    //SendN2kBattery();
    NMEA2000.ParseMessages();
    N2KMessageHandler.Update();
//    BSP_LEDToggle(BSP_LED_1);
}



