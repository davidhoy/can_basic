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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c ../src/config/pic32mx_125_sk/initialization.c ../src/config/pic32mx_125_sk/interrupts.c ../src/config/pic32mx_125_sk/exceptions.c ../src/main_pic32mx.c ../src/NMEA2000_pic32mx.cpp ../src/appn2k.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1294814837/plib_can1.o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ${OBJECTDIR}/_ext/107778817/initialization.o ${OBJECTDIR}/_ext/107778817/interrupts.o ${OBJECTDIR}/_ext/107778817/exceptions.o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o ${OBJECTDIR}/_ext/1360937237/appn2k.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1294814837/plib_can1.o.d ${OBJECTDIR}/_ext/1294814499/plib_clk.o.d ${OBJECTDIR}/_ext/1484474576/plib_evic.o.d ${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d ${OBJECTDIR}/_ext/107778817/initialization.o.d ${OBJECTDIR}/_ext/107778817/interrupts.o.d ${OBJECTDIR}/_ext/107778817/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o.d ${OBJECTDIR}/_ext/1360937237/appn2k.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1294814837/plib_can1.o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ${OBJECTDIR}/_ext/107778817/initialization.o ${OBJECTDIR}/_ext/107778817/interrupts.o ${OBJECTDIR}/_ext/107778817/exceptions.o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o ${OBJECTDIR}/_ext/1360937237/appn2k.o

# Source Files
SOURCEFILES=../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c ../src/config/pic32mx_125_sk/initialization.c ../src/config/pic32mx_125_sk/interrupts.c ../src/config/pic32mx_125_sk/exceptions.c ../src/main_pic32mx.c ../src/NMEA2000_pic32mx.cpp ../src/appn2k.cpp



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
	${MAKE}  -f nbproject/Makefile-pic32mx_125_sk.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1294814837/plib_can1.o: ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c  .generated_files/1c5ca6d5576be94e56e3a3b2e7ad20d1aed899da.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814837" 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814837/plib_can1.o.d" -o ${OBJECTDIR}/_ext/1294814837/plib_can1.o ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1294814499/plib_clk.o: ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c  .generated_files/4f30f5af3013235f3f4e51db74c89965e2ff9b10.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814499" 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814499/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484474576/plib_evic.o: ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c  .generated_files/90563c11bb34ab094cab8c019f52915b2c558159.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484474576" 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484474576/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484420748/plib_gpio.o: ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c  .generated_files/23ff6a4718ef2505550b38a1c5c3f137f17f31a5.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484420748" 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159143931/xc32_monitor.o: ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c  .generated_files/3570ff248b5ca14d689eaf1a00c82153f1931dac.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1159143931" 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/initialization.o: ../src/config/pic32mx_125_sk/initialization.c  .generated_files/e2bc76ec5463d1be849c8fbda710c8330931a7b4.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/initialization.o.d" -o ${OBJECTDIR}/_ext/107778817/initialization.o ../src/config/pic32mx_125_sk/initialization.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/interrupts.o: ../src/config/pic32mx_125_sk/interrupts.c  .generated_files/7801febf0b11a732990485d87a6e71e9cad508a1.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/interrupts.o.d" -o ${OBJECTDIR}/_ext/107778817/interrupts.o ../src/config/pic32mx_125_sk/interrupts.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/exceptions.o: ../src/config/pic32mx_125_sk/exceptions.c  .generated_files/5dd64c8c802de237da1e69d6169d31cbe794f764.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/exceptions.o.d" -o ${OBJECTDIR}/_ext/107778817/exceptions.o ../src/config/pic32mx_125_sk/exceptions.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main_pic32mx.o: ../src/main_pic32mx.c  .generated_files/feb9c4d9285fd05e4569c742a6d8edd1aa15bec2.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o ../src/main_pic32mx.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1294814837/plib_can1.o: ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c  .generated_files/d3d0492c506bb727931ff992abc4bd6fffe3f324.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814837" 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814837/plib_can1.o.d" -o ${OBJECTDIR}/_ext/1294814837/plib_can1.o ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1294814499/plib_clk.o: ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c  .generated_files/327024c99cb2207de94ed663fb6718415ba8cc1a.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814499" 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814499/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484474576/plib_evic.o: ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c  .generated_files/188e6c2e106efb3bbda1ed4b51fe20745564e603.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484474576" 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484474576/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484420748/plib_gpio.o: ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c  .generated_files/9e3ab0a885fe66f8a073e19c359e0b7eb8bb349.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484420748" 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159143931/xc32_monitor.o: ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c  .generated_files/e1c4d9e09db4f82cb4213b4837224291ba903d4e.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1159143931" 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/initialization.o: ../src/config/pic32mx_125_sk/initialization.c  .generated_files/ed3103f3d6b0ed3226b3be33c771223ddf66789.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/initialization.o.d" -o ${OBJECTDIR}/_ext/107778817/initialization.o ../src/config/pic32mx_125_sk/initialization.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/interrupts.o: ../src/config/pic32mx_125_sk/interrupts.c  .generated_files/4a704b651599c09ade3a34add9a7512aa40232a9.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/interrupts.o.d" -o ${OBJECTDIR}/_ext/107778817/interrupts.o ../src/config/pic32mx_125_sk/interrupts.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/exceptions.o: ../src/config/pic32mx_125_sk/exceptions.c  .generated_files/7c7dc8be360b1d912d1e9f2b37c532099e953177.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/exceptions.o.d" -o ${OBJECTDIR}/_ext/107778817/exceptions.o ../src/config/pic32mx_125_sk/exceptions.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main_pic32mx.o: ../src/main_pic32mx.c  .generated_files/ae65788cfeb1ba937b0eb3b28552734125bd3c95.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../NMEA2000/src" -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o ../src/main_pic32mx.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o: ../src/NMEA2000_pic32mx.cpp  .generated_files/e6416a9df747aad85b850f3a6cdc57083c0098b.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../NMEA2000/src" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o ../src/NMEA2000_pic32mx.cpp   -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/appn2k.o: ../src/appn2k.cpp  .generated_files/2512f4cc8d9dc9b1002bc1bdf1a53ae503b9b411.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/appn2k.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/appn2k.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../NMEA2000/src" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/appn2k.o.d" -o ${OBJECTDIR}/_ext/1360937237/appn2k.o ../src/appn2k.cpp   -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o: ../src/NMEA2000_pic32mx.cpp  .generated_files/5e0c37b936a38a8e26d4b36603a61aa37d18d882.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../NMEA2000/src" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1360937237/NMEA2000_pic32mx.o ../src/NMEA2000_pic32mx.cpp   -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/appn2k.o: ../src/appn2k.cpp  .generated_files/820b7a19ef9abdf74119bafd0da73ee4383c6189.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/appn2k.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/appn2k.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../../../NMEA2000/src" -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/appn2k.o.d" -o ${OBJECTDIR}/_ext/1360937237/appn2k.o ../src/appn2k.cpp   -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../NMEA2000/NMEA2000.X/dist/default/debug/NMEA2000.X.a  ../src/config/pic32mx_125_sk/p32MX570F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\NMEA2000\NMEA2000.X\dist\default\debug\NMEA2000.X.a      -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=12288,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../NMEA2000/NMEA2000.X/dist/default/production/NMEA2000.X.a ../src/config/pic32mx_125_sk/p32MX570F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\NMEA2000\NMEA2000.X\dist\default\production\NMEA2000.X.a      -DXPRJ_pic32mx_125_sk=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=12288,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
