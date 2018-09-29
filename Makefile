HYPERVISOR_PRODUCT = LTZVisor
HYPERVISOR_MAJOR_VERSION = 0
HYPERVISOR_MINOR_VERSION = 2
HYPERVISOR_REVISION_VERSION = 1

export BOARD:= ZEDBOARD
export S_GUEST:= BARE_METAL
export NS_GUEST:= LINUX
export CROSS_COMPILE:= arm-none-eabi-

export SDK_PATH = $(CURDIR)

#export CROSS_COMPILE = /opt/CodeSourcery/arm-xilinx-gnueabi/bin/arm-xilinx-eabi-
#export CROSS_COMPILE = /opt/Linaro/gcc-linaro-7.1.1-2017.08-x86_64_arm-eabi/bin/arm-eabi-
export CROSS_COMPILE = $(SDK_PATH)/Linaro/gcc-linaro-7.1.1-2017.08-x86_64_arm-eabi/bin/arm-eabi-

all:
	echo 'LTZVisor builds start'
	$(MAKE) -C $(SDK_PATH)/src

clean:
	$(MAKE) -C $(SDK_PATH)/src clean

	rm -f bin/*.bin bin/*.elf
	rm -f $(VERSION_FILE)
