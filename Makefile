obj-m += simple.o

all:
	make -C /lib/modules/4.9.0-6-amd64/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD)/ clean
