# Comment/uncomment the following line to disable/enable debugging
#DEBUG = y
obj-m += test_driver.o

#KERNELDIR ?= /lib/modules/$(shell uname -r)/build
KERNELDIR ?= /home/user/bbb/build/tmp/work/beaglebone-poky-linux-gnueabi/linux-stable/4.4-r6/linux-beaglebone-standard-build 
PWD       := $(shell pwd)

all:
	make -C $(KERNELDIR) M=$(PWD) modules
#modules:
#	$(MAKE) -C $(KERNELDIR) M=$(PWD) LDDINC=$(PWD)/../include modules


clean:
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions

#depend .depend dep:
#	$(CC) $(CFLAGS) -M *.c > .depend


#ifeq (.depend,$(wildcard .depend))
#include .depend
#endif
