/*
  The MIT License

  Copyright (c) 2020 David Hoy david@thehoys.com

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
*/

/*
  Inherited NMEA2000 object for PIC32MX internal CAN
  based setup. See also NMEA2000 library.
*/


#include "NMEA2000_pic32mx.h"
extern "C" {
#include "definitions.h"
}

//*****************************************************************************
tNMEA2000_pic32mx::tNMEA2000_pic32mx(uint16_t _DefTimeOut) : tNMEA2000() {

	m_DefTimeOut = _DefTimeOut;
}

extern void CanIdToN2k(unsigned long id, unsigned char& prio, unsigned long& pgn, unsigned char& src, unsigned char& dst);


//*****************************************************************************
bool tNMEA2000_pic32mx::CANSendFrame(unsigned long id, unsigned char len, const unsigned char *buf, bool fastpacket) {
    
    //LED1_Set();
    CAN_MSG_TX_ATTRIBUTE msgAttr = CAN_MSG_TX_DATA_FRAME;
    uint32_t _id = id;
    uint8_t  _len = len;
    bool ret = CAN1_MessageTransmit(_id, _len, (uint8_t*)buf, 0, msgAttr);
    LED1_Toggle();
	return ret;
}

//*****************************************************************************
bool tNMEA2000_pic32mx::CANOpen() {
    
    CAN1_Initialize(); 
    return true;
}

//*****************************************************************************
bool tNMEA2000_pic32mx::CANGetFrame(unsigned long& id, unsigned char& len, unsigned char* buf) {
    
    if (CAN1_InterruptGet(1, CAN_FIFO_INTERRUPT_RXNEMPTYIF_MASK)) {
        CAN_ERROR status = CAN1_ErrorGet();
        if (status == CAN_ERROR_NONE) {
            CAN_MSG_RX_ATTRIBUTE msgAttr;
            uint32_t rxid = 0;
            uint8_t  rxlen = 0;
            if (CAN1_MessageReceive(&rxid, &rxlen, (uint8_t*)buf, 0, 1, &msgAttr) == true) {
                status = CAN1_ErrorGet();
                if (status == CAN_ERROR_NONE) {
                    id = rxid;
                    len = rxlen;
                    LED2_Toggle();
                    return true;  
                }
            }
        }
    }
    return false;
}

//*****************************************************************************
void tNMEA2000_pic32mx::InitCANFrameBuffers() {
}


#define ReadCoreTimer()     _CP0_GET_COUNT()          // Read the MIPS Core Timer
#define SYS_CLK_FREQ        4800000
#define GetSystemClock()    (80000000UL)/* Fcy = 80MHz */
#define us_SCALE            (GetSystemClock()/2000000)
#define ms_SCALE            (GetSystemClock()/2000)

inline void DelayMs(unsigned long int msDelay )
{
    register unsigned int startCntms = ReadCoreTimer();
    register unsigned int waitCntms = msDelay * ms_SCALE;
    while( ReadCoreTimer() - startCntms < waitCntms )
        ;
}

inline void DelayUs(unsigned long int usDelay )
{
    register unsigned int startCnt = ReadCoreTimer();
    register unsigned int waitCnt = usDelay * us_SCALE;
    while( ReadCoreTimer() - startCnt < waitCnt )
        ;
}

extern "C" uint32_t millis() {
	register uint32_t timer = ReadCoreTimer();
    timer /= ms_SCALE;
    return timer; 
}

extern "C" void delay(uint32_t ms) {   
    DelayMs(ms);
}