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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c ../src/config/pic32mx_125_sk/initialization.c ../src/config/pic32mx_125_sk/interrupts.c ../src/config/pic32mx_125_sk/exceptions.c ../src/main_pic32mx.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1294814837/plib_can1.o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ${OBJECTDIR}/_ext/107778817/initialization.o ${OBJECTDIR}/_ext/107778817/interrupts.o ${OBJECTDIR}/_ext/107778817/exceptions.o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1294814837/plib_can1.o.d ${OBJECTDIR}/_ext/1294814499/plib_clk.o.d ${OBJECTDIR}/_ext/1484474576/plib_evic.o.d ${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d ${OBJECTDIR}/_ext/107778817/initialization.o.d ${OBJECTDIR}/_ext/107778817/interrupts.o.d ${OBJECTDIR}/_ext/107778817/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1294814837/plib_can1.o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ${OBJECTDIR}/_ext/107778817/initialization.o ${OBJECTDIR}/_ext/107778817/interrupts.o ${OBJECTDIR}/_ext/107778817/exceptions.o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o

# Source Files
SOURCEFILES=../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c ../src/config/pic32mx_125_sk/initialization.c ../src/config/pic32mx_125_sk/interrupts.c ../src/config/pic32mx_125_sk/exceptions.c ../src/main_pic32mx.c



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
${OBJECTDIR}/_ext/1294814837/plib_can1.o: ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c  .generated_files/cc74b164d6e8ae583bec8693841112a00fcb3f6e.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814837" 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814837/plib_can1.o.d" -o ${OBJECTDIR}/_ext/1294814837/plib_can1.o ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1294814499/plib_clk.o: ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c  .generated_files/40f67bfff79ba5abe4e8adf118e8e37f4230fe56.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814499" 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814499/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484474576/plib_evic.o: ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c  .generated_files/51b31661fe99f7566cba4a157da01132987cc18c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484474576" 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484474576/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484420748/plib_gpio.o: ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c  .generated_files/b38243afc587f30166521a612953eed1f4d8109c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484420748" 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159143931/xc32_monitor.o: ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c  .generated_files/564cbc6a0437e75bf68577f555b91a6681acfea6.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1159143931" 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/initialization.o: ../src/config/pic32mx_125_sk/initialization.c  .generated_files/5ac234cd17fa1248c206d5b0c3aaba8106c2ee32.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/initialization.o.d" -o ${OBJECTDIR}/_ext/107778817/initialization.o ../src/config/pic32mx_125_sk/initialization.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/interrupts.o: ../src/config/pic32mx_125_sk/interrupts.c  .generated_files/9b73e4871f68cf2480fe4d31c32d2ce5fae3afab.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/interrupts.o.d" -o ${OBJECTDIR}/_ext/107778817/interrupts.o ../src/config/pic32mx_125_sk/interrupts.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/exceptions.o: ../src/config/pic32mx_125_sk/exceptions.c  .generated_files/581af94215e887bfa1d776ce5f3f17ee349dc8e4.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/exceptions.o.d" -o ${OBJECTDIR}/_ext/107778817/exceptions.o ../src/config/pic32mx_125_sk/exceptions.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main_pic32mx.o: ../src/main_pic32mx.c  .generated_files/f4366daa0848e7c711870464faea99e096834471.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o ../src/main_pic32mx.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1294814837/plib_can1.o: ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c  .generated_files/35d3ad2971a6787069fcd0c5f5e712ad7286502c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814837" 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814837/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814837/plib_can1.o.d" -o ${OBJECTDIR}/_ext/1294814837/plib_can1.o ../src/config/pic32mx_125_sk/peripheral/can/plib_can1.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1294814499/plib_clk.o: ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c  .generated_files/76e104346e07ffa8c65ac9f3defe4b434d59b51c.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1294814499" 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1294814499/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1294814499/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1294814499/plib_clk.o ../src/config/pic32mx_125_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484474576/plib_evic.o: ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c  .generated_files/39762f9e1e9384455d60c1c11cde8f516e9e3c14.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484474576" 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484474576/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484474576/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1484474576/plib_evic.o ../src/config/pic32mx_125_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1484420748/plib_gpio.o: ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c  .generated_files/4690b80dd1f54cb49bf61ced208ad67a2c536879.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1484420748" 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1484420748/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1484420748/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1484420748/plib_gpio.o ../src/config/pic32mx_125_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159143931/xc32_monitor.o: ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c  .generated_files/2ea49ea7288bcb73a20ef836d0c75fc8614774c7.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1159143931" 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159143931/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1159143931/xc32_monitor.o ../src/config/pic32mx_125_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/initialization.o: ../src/config/pic32mx_125_sk/initialization.c  .generated_files/cc577edb2c189c344a011665715e2d3be56d1927.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/initialization.o.d" -o ${OBJECTDIR}/_ext/107778817/initialization.o ../src/config/pic32mx_125_sk/initialization.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/interrupts.o: ../src/config/pic32mx_125_sk/interrupts.c  .generated_files/99e54842a91b94324f12d21098ed45b60740945d.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/interrupts.o.d" -o ${OBJECTDIR}/_ext/107778817/interrupts.o ../src/config/pic32mx_125_sk/interrupts.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107778817/exceptions.o: ../src/config/pic32mx_125_sk/exceptions.c  .generated_files/c0b3d94391e679885793993a87165b9ebe8225c9.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/107778817" 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/107778817/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107778817/exceptions.o.d" -o ${OBJECTDIR}/_ext/107778817/exceptions.o ../src/config/pic32mx_125_sk/exceptions.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main_pic32mx.o: ../src/main_pic32mx.c  .generated_files/20ea988b9248be7d3f0bd201e4caa1cb62f18170.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_125_sk" -I"../src/packs/PIC32MX570F512L_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_pic32mx.o ../src/main_pic32mx.c    -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mx_125_sk/p32MX570F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mx_125_sk/p32MX570F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx_125_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx_125_sk.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

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
