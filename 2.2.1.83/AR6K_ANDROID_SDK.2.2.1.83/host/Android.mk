#Android makefile to build kernel as a part of Android Build

ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH := $(call my-dir)
ATH_SRC := $(LOCAL_PATH)

ATH_LINUXPATH := kernel_imx
#export  ATH_SRC_BASE=$(ATH_SRC)
#export  ATH_BUILD_TYPE=FSL_ARM_NATIVEMMC
#export  ATH_BUS_TYPE=sdio
#export  ATH_OS_SUB_TYPE=linux_2_6
#export  ATH_LINUXPATH=kernel_imx
#export  ATH_ARCH_CPU_TYPE=arm
#export  ATH_BUS_SUBTYPE=linux_sdio
#export  ATH_ANDROID_ENV=yes
#export  ATH_EEPROM_FILE_USED=no
#export  ATH_SOFTMAC_USED=no
 
ATH_HIF_TYPE:=sdio
#ATH_SRC_BASE:= .

mod_file := $(TARGET_OUT)/wifi/ar6000.ko
$(mod_file) :
	cd $(ATH_SRC) && ./comp.sh 2 ${PWD}/$(ATH_LINUXPATH)
	cd $(ATH_SRC) && ./comp.sh 1 ${PWD}/$(ATH_LINUXPATH)
#	$(MAKE) ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabi- -C $(ATH_LINUXPATH) ATH_HIF_TYPE=$(ATH_HIF_TYPE) SUBDIRS=${PWD}/$(ATH_SRC)/os/linux modules
	mkdir -p $(TARGET_OUT)/wifi
	$(ACP) $(ATH_SRC)/os/linux/ar6000.ko $(TARGET_OUT)/wifi/

ALL_PREBUILT+=$(mod_file)

endif
