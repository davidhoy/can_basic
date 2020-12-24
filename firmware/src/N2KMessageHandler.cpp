/*
N2KMessageHandler.cpp

*/

#include "N2KMessageHandler.h"
#include <N2kMessages.h>
//#include <NMEA0183Messages.h>
#include <math.h>
extern "C" {
#include "definitions.h"
}

//const double radToDeg=180.0/M_PI;

//*****************************************************************************
void tN2KMessageHandler::HandleMsg(const tN2kMsg &N2kMsg) {
    LED3_Toggle();
    switch (N2kMsg.PGN) {
        case 127250UL: 
            HandleHeading(N2kMsg);  
            break;
            
        case 127258UL: 
            HandleVariation(N2kMsg); 
            break;
            
        case 128259UL:
            HandleBoatSpeed(N2kMsg);
            break;
            
        case 128267UL:
            HandleDepth(N2kMsg);
            break;
            
        case 129025UL:
            HandlePosition(N2kMsg); 
            break;
            
        case 129026UL:
            HandleCOGSOG(N2kMsg);   
            break;
            
        case 129029UL:
            HandleGNSS(N2kMsg);  
            break;
            
        case 130306UL:
            HandleWind(N2kMsg); 
            break;
            
        case 127505UL:
            HandleFluidLevel(N2kMsg);
            break;
            
        default:
            break;
    }
}

//*****************************************************************************
void tN2KMessageHandler::Update() {
    SendRMC();
    if ( LastHeadingTime+2000<millis() ) 
        Heading=N2kDoubleNA;
    if ( LastCOGSOGTime+2000<millis() ) {
        COG=N2kDoubleNA; 
        SOG=N2kDoubleNA;
    }
    if ( LastPositionTime+4000<millis() ) { 
        Latitude=N2kDoubleNA;
        Longitude=N2kDoubleNA; 
    }
    if ( LastWindTime+2000<millis() ) {
        WindSpeed=N2kDoubleNA;
        WindAngle=N2kDoubleNA;
    }
}

//*****************************************************************************
//void N2KMessageHandler::SendMessage(const tNMEA0183Msg &NMEA0183Msg) {
 /// if ( pNMEA0183!=0 ) pNMEA0183->SendMessage(NMEA0183Msg);
//  if ( SendNMEA0183MessageCallback!=0 ) SendNMEA0183MessageCallback(NMEA0183Msg);
//}

//*****************************************************************************
void tN2KMessageHandler::HandleHeading(const tN2kMsg &N2kMsg) {
    unsigned char SID;
    tN2kHeadingReference ref;
    double _Deviation=0;
    double _Variation;
    //tNMEA0183Msg NMEA0183Msg;

    if ( ParseN2kHeading(N2kMsg, SID, Heading, _Deviation, _Variation, ref) ) {
        if ( ref==N2khr_magnetic ) {
            if ( !N2kIsNA(_Variation) ) 
                Variation=_Variation; // Update Variation
            if ( !N2kIsNA(Heading) && !N2kIsNA(Variation) ) 
                Heading-=Variation;
        }
        LastHeadingTime=millis();
    //  if ( NMEA0183SetHDG(NMEA0183Msg,Heading,_Deviation,Variation) ) {
    //    SendMessage(NMEA0183Msg);
    //  }
    }
}

//*****************************************************************************
void tN2KMessageHandler::HandleVariation(const tN2kMsg &N2kMsg) {
unsigned char SID;
tN2kMagneticVariation Source;

  ParseN2kMagneticVariation(N2kMsg,SID,Source,DaysSince1970,Variation);
}

//*****************************************************************************
void tN2KMessageHandler::HandleBoatSpeed(const tN2kMsg &N2kMsg) {
unsigned char SID;
double WaterReferenced;
double GroundReferenced;
tN2kSpeedWaterReferenceType SWRT;

  if ( ParseN2kBoatSpeed(N2kMsg,SID,WaterReferenced,GroundReferenced,SWRT) ) {
    //tNMEA0183Msg NMEA0183Msg;
    //double MagneticHeading=( !N2kIsNA(Heading) && !N2kIsNA(Variation)?Heading+Variation: NMEA0183DoubleNA);
    //if ( NMEA0183SetVHW(NMEA0183Msg,Heading,MagneticHeading,WaterReferenced) ) {
    //  SendMessage(NMEA0183Msg);
    //}
  }
}

//*****************************************************************************
void tN2KMessageHandler::HandleDepth(const tN2kMsg &N2kMsg) {
unsigned char SID;
double DepthBelowTransducer;
double Offset;
double Range;

  if ( ParseN2kWaterDepth(N2kMsg,SID,DepthBelowTransducer,Offset,Range) ) {
      //tNMEA0183Msg NMEA0183Msg;
      //if ( NMEA0183SetDPT(NMEA0183Msg,DepthBelowTransducer,Offset) ) {
      //  SendMessage(NMEA0183Msg);
      //}
      //if ( NMEA0183SetDBx(NMEA0183Msg,DepthBelowTransducer,Offset) ) {
      //  SendMessage(NMEA0183Msg);
      //}
  }
}

//*****************************************************************************
void tN2KMessageHandler::HandlePosition(const tN2kMsg &N2kMsg) {

  if ( ParseN2kPGN129025(N2kMsg, Latitude, Longitude) ) {
    LastPositionTime=millis();
  }
}

//*****************************************************************************
void tN2KMessageHandler::HandleCOGSOG(const tN2kMsg &N2kMsg) {
unsigned char SID;
tN2kHeadingReference HeadingReference;
//tNMEA0183Msg NMEA0183Msg;

  if ( ParseN2kCOGSOGRapid(N2kMsg,SID,HeadingReference,COG,SOG) ) {
    LastCOGSOGTime=millis();
    //double MCOG=( !N2kIsNA(COG) && !N2kIsNA(Variation)?COG-Variation:NMEA0183DoubleNA );
    //if ( HeadingReference==N2khr_magnetic ) {
    //  MCOG=COG;
    //  if ( !N2kIsNA(Variation) ) COG-=Variation;
    //}
    //if ( NMEA0183SetVTG(NMEA0183Msg,COG,MCOG,SOG) ) {
    //  SendMessage(NMEA0183Msg);
    //}
  }
}

//*****************************************************************************
void tN2KMessageHandler::HandleGNSS(const tN2kMsg &N2kMsg) {
unsigned char SID;
tN2kGNSStype GNSStype;
tN2kGNSSmethod GNSSmethod;
unsigned char nSatellites;
double HDOP;
double PDOP;
double GeoidalSeparation;
unsigned char nReferenceStations;
tN2kGNSStype ReferenceStationType;
uint16_t ReferenceSationID;
double AgeOfCorrection;

  if ( ParseN2kGNSS(N2kMsg,SID,DaysSince1970,SecondsSinceMidnight,Latitude,Longitude,Altitude,GNSStype,GNSSmethod,
                    nSatellites,HDOP,PDOP,GeoidalSeparation,
                    nReferenceStations,ReferenceStationType,ReferenceSationID,AgeOfCorrection) ) {
    LastPositionTime=millis();
  }
}

//*****************************************************************************
void tN2KMessageHandler::HandleWind(const tN2kMsg &N2kMsg) {
unsigned char SID;
tN2kWindReference WindReference;
//tNMEA0183WindReference NMEA0183Reference=NMEA0183Wind_True;

  if ( ParseN2kWindSpeed(N2kMsg,SID,WindSpeed,WindAngle,WindReference) ) {
  //  tNMEA0183Msg NMEA0183Msg;
    LastWindTime=millis();
   // if ( WindReference==N2kWind_Apparent ) NMEA0183Reference=NMEA0183Wind_Apparent;

 //   if ( NMEA0183SetMWV(NMEA0183Msg, WindAngle*radToDeg, NMEA0183Reference , WindSpeed) ) {
 //     SendMessage(NMEA0183Msg);
 //   }
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
void tN2KMessageHandler::SendRMC() {
    if ( NextRMCSend<=millis() && !N2kIsNA(Latitude) ) {
      //tNMEA0183Msg NMEA0183Msg;
      //if ( NMEA0183SetRMC(NMEA0183Msg,SecondsSinceMidnight,Latitude,Longitude,COG,SOG,DaysSince1970,Variation) ) {
      //  SendMessage(NMEA0183Msg);
      //}
      //SetNextRMCSend();
    }
}

