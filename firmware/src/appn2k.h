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

#ifndef _APPN2K_H    /* Guard against multiple inclusion */
#define _APPN2K_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

#include <stdint.h>

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif
    
#define NMEA2000_VID           1127     // ElectroMaax vendor ID
#define NMEA2000_PID           25936    //    or  0x6550
#define NMEA2000_Product_Name  "EMAAX AT3"
#define NMEA2000_Function_Code 141      // DC Generation/Alternator
#define NMEA2000_Class_Code    35       // Electrical Generation

 void NMEA2000Setup(void);
 void NMEA2000Loop(void);
  
/* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _APPN2K_H */

/* *****************************************************************************
 End of File
 */
