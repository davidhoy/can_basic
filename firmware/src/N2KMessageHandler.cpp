/*
N2KMessageHandler.cpp

*/

#include "NMEA2000.h"
#include "N2kGroupFunctionDefaultHandlers.h"
#include "N2KMessageHandler.h"
#include <N2kMessages.h>
extern "C" {
#include "definitions.h"
}


extern tNMEA2000& NMEA2000;


typedef enum {
    CMD_RESPONSE = 0,
    CMD_READ = 1,
    CMD_WRITE = 2,
    CMD_RESET = 3,
    CMD_RESET_ALL = 4,
} CONFIG_CMD;

typedef enum {
    DATA_FIELDBOX_SETTINGS = 0,
    DATA_FIELDBOX_STATE = 1,
    DATA_BATTERYBOX_SETTINGS = 2,
    DATA_BATTERYBOX_STATE = 3,
    DATA_CONTROLBOX_SETTINGS = 4,
    DATA_CONTROLBOX_STATE = 5,
} DATA_ITEM;


//*****************************************************************************
void tN2KMessageHandler::HandleMsg(const tN2kMsg &N2kMsg) {
    LED2_Toggle();
    switch (N2kMsg.PGN) {
        case 127505UL:
            HandleFluidLevel(N2kMsg);
            break;
            
        case 126720L:
            HandleProprietaryConfig(N2kMsg);
            break;
            
        default:
            break;
    }
}

//*****************************************************************************
void tN2KMessageHandler::Update() {
    uint32_t timestamp = millis();
    
     uint32_t val = lastTankLevel + 1000;
    if (timestamp > lastTankLevel+1000) {
        tankFluidLevel = N2kDoubleNA;
        tankCapacity   = N2kDoubleNA;
    }
}

//*****************************************************************************
void tN2KMessageHandler::HandleFluidLevel(const tN2kMsg &N2kMsg) { 
    if (N2kMsg.PGN != 127505)
        return;
           
    int Index = 0;
    uint8_t byte   = N2kMsg.GetByte(Index);
    tankInstance   = byte & 0x0F;
    tankFluidType  = (enum tN2kFluidType)(byte >> 4);
    tankFluidLevel = N2kMsg.Get2ByteInt(Index) * 4e-3;
    tankCapacity   = N2kMsg.Get4ByteUInt(Index) * 1e-4 * 264.172;
  
    lastTankLevel = millis();
}


//*****************************************************************************
void tN2KMessageHandler::HandleProprietaryConfig(const tN2kMsg &msg) { 
    if (msg.PGN != 126720)
        return;
           
    int msgIndx = 0;
    uint8_t command      = msg.GetByte(msgIndx);
    uint8_t dataItem     = msg.GetByte(msgIndx);
    uint8_t dataInstance = msg.GetByte(msgIndx);
    
    //int respIndx = 0;
    char tmp[200] = { 0 };
    tN2kMsg response;
    response.Init(msg.Priority, msg.PGN, 0, msg.Source);
    response.AddByte(CMD_RESPONSE);
    response.AddByte(dataItem);
    response.AddByte(dataInstance);
    switch (command) {    
        case CMD_READ:
            switch (dataItem) {
                case DATA_FIELDBOX_SETTINGS:
                    strcpy(tmp,"FieldBoxSettings");
                    response.AddBuf(tmp,strlen(tmp));
                    break;
                    
                case DATA_FIELDBOX_STATE:
                    strcpy(tmp,"FieldBoxState");
                    response.AddBuf(tmp,strlen(tmp));
                    break;
                    
                case DATA_BATTERYBOX_SETTINGS:
                    strcpy(tmp,"BatteryBoxSettings");
                    response.AddBuf(tmp,strlen(tmp));
                    break;
                    
                case DATA_BATTERYBOX_STATE:
                    strcpy(tmp,"BatteryBoxState");
                    response.AddBuf(tmp,strlen(tmp));
                    break;
                    
                case DATA_CONTROLBOX_SETTINGS:
                    strcpy(tmp,"ControlBoxSettings");
                    response.AddBuf(tmp,strlen(tmp));
                    break;
                    
                case DATA_CONTROLBOX_STATE:
                    strcpy(tmp,"ControlBoxState");
                    response.AddBuf(tmp,strlen(tmp));
                    break;
                   
                default:
                    break;                
            }
            break;
    
        case CMD_WRITE:
            break;
            
        case CMD_RESET:
            break;
            
        case CMD_RESET_ALL:
            break;
        
        case CMD_RESPONSE:
        default:
            break;
    }
    NMEA2000.SendMsg(response);
}

