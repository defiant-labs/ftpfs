obj-m := ftpfs.o
ftpfs-objs := init.o

CFLAGS_init.o = -DDEBUG

KDIR ?= /lib/modules/`uname -r`/build

all:
	make -C $(KDIR) M=$$PWD modules
clean:
	make -C $(KDIR) M=$$PWD clean