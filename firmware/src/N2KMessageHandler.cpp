/*
N2KMessageHandler.cpp

*/

#include "N2kGroupFunctionDefaultHandlers.h"
#include "N2KMessageHandler.h"
#include <N2kMessages.h>
extern "C" {
#include "definitions.h"
}


//*****************************************************************************
void tN2KMessageHandler::HandleMsg(const tN2kMsg &N2kMsg) {
    LED2_Toggle();
    switch (N2kMsg.PGN) {
        case 127505UL:
            HandleFluidLevel(N2kMsg);
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


