#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mx_125_sk.mk)" "nbproject/Makefile-local-pic32mx_125_sk.mk"
include nbproject/Makefile-local-pic32mx_125_sk.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mx_125_sk
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/nmea2000app.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/nmea2000app.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mx_125_sk/bsp/bsp.c ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c ../src/config/pic32mx_125_sk/initialization.c ../src/config/pic32mx_125_sk/interrupts.c ../src/config/pic32mx_125_sk/exceptions.c ../src/main_pic32mx.c ../src/NMEA2000_pic32mx.cpp ../src/appn2k.cpp ../src/N2KMessageHandler.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/135267889/bsp.o ${OBJECTDIR}/_ext/1294814837/plib_can1.o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ${OBJECTDIR}/_ext/107778817/initialization.o ${OBJECTDIR}/_ext/107778817/interrupts.o ${OBJECTDIR}/_ext/107778817/exceptions.o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o ${OBJECTDIR}/_ext/1360937237/appn2k.o ${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/135267889/bsp.o.d ${OBJECTDIR}/_ext/1294814837/plib_can1.o.d ${OBJECTDIR}/_ext/1294814499/plib_clk.o.d ${OBJECTDIR}/_ext/1484474576/plib_evic.o.d ${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d ${OBJECTDIR}/_ext/107778817/initialization.o.d ${OBJECTDIR}/_ext/107778817/interrupts.o.d ${OBJECTDIR}/_ext/107778817/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o.d ${OBJECTDIR}/_ext/1360937237/appn2k.o.d ${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/135267889/bsp.o ${OBJECTDIR}/_ext/1294814837/plib_can1.o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ${OBJECTDIR}/_ext/107778817/initialization.o ${OBJECTDIR}/_ext/107778817/interrupts.o ${OBJECTDIR}/_ext/107778817/exceptions.o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o ${OBJECTDIR}/_ext/1360937237/appn2k.o ${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o

# Source Files
SOURCEFILES=../src/config/pic32mx_125_sk/bsp/bsp.c ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c ../src/config/pic32mx_125_sk/initialization.c ../src/config/pic32mx_125_sk/interrupts.c ../src/config/pic32mx_125_sk/exceptions.c ../src/main_pic32mx.c ../src/NMEA2000_pic32mx.cpp ../src/appn2k.cpp ../src/N2KMessageHandler.cpp



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mx_125_sk.mk dist/${CND_CONF}/${IMAGE_TYPE}/nmea2000app.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX570F512L
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32mx_125_sk\p32MX570F512L.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/135267889/bsp.o: ../src/config/pic32mx_125_sk/bsp/bsp.c  .generated_files/d93f7159d06d3c3bdcd29e972f84e3d90604bda.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/135267889" 
	@${RM} ${OBJECTDIR}/_ext/135267889/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/135267889/bsp.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/135267889/bsp.o.d" -o ${OBJECTDIR}/_ext/135267889/bsp.o ../src/config/pic32mx_125_sk/bsp/bsp.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1294814837/plib_can1.o: ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c  .generated_files/b5c0c4522b187a15ea53e836340f6ef30fc4c1c3.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814837" 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814837/plib_can1.o.d" -o ${OBJECTDIR}/_ext/1294814837/plib_can1.o ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1294814499/plib_clk.o: ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c  .generated_files/94e88f192f3aaed70d7ffcc340dc99ac45a1fab6.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814499" 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814499/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484474576/plib_evic.o: ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c  .generated_files/e2993d9d861b0353236233bab241250b30bd6c32.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484474576" 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484474576/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484420748/plib_gpio.o: ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c  .generated_files/d7f569e1f8318a3aa0dc70ed6f1b451c52f54257.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484420748" 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159143931/xc32_monitor.o: ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c  .generated_files/33d61c7200ac9899c6f8e310ca14e3ff961edc58.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1159143931" 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/initialization.o: ../src/config/pic32mx_125_sk/initialization.c  .generated_files/6038c949a59bfc094b2bb9641686f585f418fa1.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/initialization.o.d" -o ${OBJECTDIR}/_ext/107778817/initialization.o ../src/config/pic32mx_125_sk/initialization.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/interrupts.o: ../src/config/pic32mx_125_sk/interrupts.c  .generated_files/b23c59640753c1053c6eec11ab4ea0dfccd786ba.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/interrupts.o.d" -o ${OBJECTDIR}/_ext/107778817/interrupts.o ../src/config/pic32mx_125_sk/interrupts.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/exceptions.o: ../src/config/pic32mx_125_sk/exceptions.c  .generated_files/62b29351a7f275e0a8a914d2b7070c7bb6618081.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/exceptions.o.d" -o ${OBJECTDIR}/_ext/107778817/exceptions.o ../src/config/pic32mx_125_sk/exceptions.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main_pic32mx.o: ../src/main_pic32mx.c  .generated_files/d469617c62290f970c15efe09f165f5208d24410.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o ../src/main_pic32mx.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/135267889/bsp.o: ../src/config/pic32mx_125_sk/bsp/bsp.c  .generated_files/d21e24b53d2e83ead52f3103fdc4044d0f62e3.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/135267889" 
	@${RM} ${OBJECTDIR}/_ext/135267889/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/135267889/bsp.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/135267889/bsp.o.d" -o ${OBJECTDIR}/_ext/135267889/bsp.o ../src/config/pic32mx_125_sk/bsp/bsp.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1294814837/plib_can1.o: ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c  .generated_files/e1d8f14e159cbab31d410e0d436ff34a45cf89c6.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814837" 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814837/plib_can1.o.d" -o ${OBJECTDIR}/_ext/1294814837/plib_can1.o ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1294814499/plib_clk.o: ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c  .generated_files/f272792c08ab3c5dc19a3a7520dafdc0411275c6.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814499" 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814499/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484474576/plib_evic.o: ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c  .generated_files/5a8d331b317bb0504592515ff3508eb2e55fa77f.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484474576" 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484474576/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484420748/plib_gpio.o: ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c  .generated_files/54f1a4b00a0be77a9e6a6dc89df2a74218ece908.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484420748" 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159143931/xc32_monitor.o: ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c  .generated_files/9f109f55864e434d9dfd79a147ba39ba6ae7e613.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1159143931" 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/initialization.o: ../src/config/pic32mx_125_sk/initialization.c  .generated_files/444e9609b66582d84b89d7a4eeb589345dfe29f.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/initialization.o.d" -o ${OBJECTDIR}/_ext/107778817/initialization.o ../src/config/pic32mx_125_sk/initialization.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/interrupts.o: ../src/config/pic32mx_125_sk/interrupts.c  .generated_files/498abe1c949ca476daeb2384c40c2228154de08.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/interrupts.o.d" -o ${OBJECTDIR}/_ext/107778817/interrupts.o ../src/config/pic32mx_125_sk/interrupts.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/exceptions.o: ../src/config/pic32mx_125_sk/exceptions.c  .generated_files/8dbfaba7f176579e88a71c93ad474d39e8ad5619.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/exceptions.o.d" -o ${OBJECTDIR}/_ext/107778817/exceptions.o ../src/config/pic32mx_125_sk/exceptions.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main_pic32mx.o: ../src/main_pic32mx.c  .generated_files/109a28f8c202cd35d289dca4468860afb0f0c756.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o ../src/main_pic32mx.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o: ../src/NMEA2000_pic32mx.cpp  .generated_files/608df498abeec14b51aa2771c411c07a634ece92.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../NMEA2000/src" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o ../src/NMEA2000_pic32mx.cpp   -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/appn2k.o: ../src/appn2k.cpp  .generated_files/c55ec0a97eede91296c5d4868a211957591f0f67.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/appn2k.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/appn2k.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../NMEA2000/src" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/appn2k.o.d" -o ${OBJECTDIR}/_ext/1360937237/appn2k.o ../src/appn2k.cpp   -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o: ../src/N2KMessageHandler.cpp  .generated_files/2dafaf1449c1f3b0aafb5e4517c8245579c20d9c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../NMEA2000/src" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o.d" -o ${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o ../src/N2KMessageHandler.cpp   -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o: ../src/NMEA2000_pic32mx.cpp  .generated_files/c99537201d570a29d1f426f880254e126bf8f095.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../NMEA2000/src" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o ../src/NMEA2000_pic32mx.cpp   -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/appn2k.o: ../src/appn2k.cpp  .generated_files/a0b324f3d28837f7e24714a2eaafcf1bcdcf7f39.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/appn2k.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/appn2k.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../NMEA2000/src" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/appn2k.o.d" -o ${OBJECTDIR}/_ext/1360937237/appn2k.o ../src/appn2k.cpp   -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o: ../src/N2KMessageHandler.cpp  .generated_files/6c8db95f75baeaf5fe346636725aec25bba6e09c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../NMEA2000/src" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o.d" -o ${OBJECTDIR}/_ext/1360937237/N2KMessageHandler.o ../src/N2KMessageHandler.cpp   -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/nmea2000app.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../NMEA2000/NMEA2000.X/dist/default/debug/NMEA2000.X.a  ../src/config/pic32mx_125_sk/p32MX570F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/nmea2000app.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\NMEA2000\NMEA2000.X\dist\default\debug\NMEA2000.X.a      -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=12288,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/nmea2000app.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../NMEA2000/NMEA2000.X/dist/default/production/NMEA2000.X.a ../src/config/pic32mx_125_sk/p32MX570F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/nmea2000app.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\NMEA2000\NMEA2000.X\dist\default\production\NMEA2000.X.a      -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=12288,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/nmea2000app.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:
	cd ../../../NMEA2000/NMEA2000.X && ${MAKE}  -f Makefile CONF=default


# Subprojects
.clean-subprojects:
	cd ../../../NMEA2000/NMEA2000.X && rm -rf "build/default" "dist/default"

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mx_125_sk
	${RM} -r dist/pic32mx_125_sk

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
