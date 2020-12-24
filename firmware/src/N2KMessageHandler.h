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
    static const unsigned long RMCPeriod=1000;
    double Latitude;
    double Longitude;
    double Altitude;
    double Variation;
    double Heading;
    double COG;
    double SOG;
    double WindSpeed;
    double WindAngle;
    unsigned long LastHeadingTime;
    unsigned long LastCOGSOGTime;
    unsigned long LastPositionTime;
    unsigned long LastPosSend;
    unsigned long LastWindTime;
    uint16_t DaysSince1970;
    double SecondsSinceMidnight;
    unsigned long NextRMCSend;
    
    unsigned char       tankInstance;
    enum tN2kFluidType  tankFluidType;
    double              tankFluidLevel;
    double              tankCapacity;
    unsigned long       lastTankLevel;

    //tNMEA0183 *pNMEA0183;
    //tSendNMEA0183MessageCallback SendNMEA0183MessageCallback;

protected:
    void HandleFluidLevel(const tN2kMsg &N2kMsg); // 127250
    void HandleHeading(const tN2kMsg &N2kMsg); // 127250
    void HandleVariation(const tN2kMsg &N2kMsg); // 127258
    void HandleBoatSpeed(const tN2kMsg &N2kMsg); // 128259
    void HandleDepth(const tN2kMsg &N2kMsg); // 128267
    void HandlePosition(const tN2kMsg &N2kMsg); // 129025
    void HandleCOGSOG(const tN2kMsg &N2kMsg); // 129026
    void HandleGNSS(const tN2kMsg &N2kMsg); // 129029
    void HandleWind(const tN2kMsg &N2kMsg); // 130306
    void SetNextRMCSend() { NextRMCSend=millis()+RMCPeriod; }
    void SendRMC();
    //void SendMessage(const tNMEA0183Msg &NMEA0183Msg);

public:
    tN2KMessageHandler(tNMEA2000 *_pNMEA2000/*, tNMEA0183 *_pNMEA0183*/) : tNMEA2000::tMsgHandler(0,_pNMEA2000) {
    //SendNMEA0183MessageCallback=0;
    //pNMEA0183=_pNMEA0183;
    Latitude=N2kDoubleNA; Longitude=N2kDoubleNA; Altitude=N2kDoubleNA;
    Variation=N2kDoubleNA; Heading=N2kDoubleNA; COG=N2kDoubleNA; SOG=N2kDoubleNA;
    SecondsSinceMidnight=N2kDoubleNA; DaysSince1970=N2kUInt16NA;
    LastPosSend=0;
    NextRMCSend=millis()+RMCPeriod;
    LastHeadingTime=0;
    LastCOGSOGTime=0;
    LastPositionTime=0;
    LastWindTime=0;
  }
  void HandleMsg(const tN2kMsg &N2kMsg);
  //void SetSendNMEA0183MessageCallback(tSendNMEA0183MessageCallback _SendNMEA0183MessageCallback) {
  //  SendNMEA0183MessageCallback=_SendNMEA0183MessageCallback;
  //}
  void Update();
};

#endif /* _N2KMESSAGEHANDLER_H */

/* *****************************************************************************
 End of File
 */
