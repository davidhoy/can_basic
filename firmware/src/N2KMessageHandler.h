/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _N2KMESSAGEHANDLER_H    /* Guard against multiple inclusion */
#define _N2KMESSAGEHANDLER_H

#include "NMEA2000.h"
#include "N2kTypes.h"

//------------------------------------------------------------------------------
class tN2KMessageHandler : public tNMEA2000::tMsgHandler {
public:
    //using tSendNMEA0183MessageCallback=void (*)(const tNMEA0183Msg &NMEA0183Msg);
    
protected:
    unsigned char       tankInstance;
    enum tN2kFluidType  tankFluidType;
    double              tankFluidLevel;
    double              tankCapacity;
    unsigned long       lastTankLevel;

protected:
    void HandleFluidLevel(const tN2kMsg &N2kMsg); // 127250

public:
    tN2KMessageHandler(tNMEA2000 *_pNMEA2000) : tNMEA2000::tMsgHandler(0,_pNMEA2000) {
    }
    void HandleMsg(const tN2kMsg &N2kMsg);
    void Update();
};

#endif /* _N2KMESSAGEHANDLER_H */

/* *****************************************************************************
 End of File
 */
