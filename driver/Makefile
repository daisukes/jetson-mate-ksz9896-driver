TARGET = i2c-ksz9897

obj-m += i2c-ksz9897.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	rm *.ko *.mod.c *.o modules.order Module.symvers
install:
	sudo cp "$(TARGET).ko" /lib/modules/$(shell uname -r)/kernel/drivers/i2c
	@if [ `grep $(TARGET) /etc/modules | wc -l` -eq 0 ]; then \
	  echo "$(TARGET)" | sudo tee -a /etc/modules; \
	fi
	sudo depmod
uninstall:
	sudo rm /lib/modules/$(shell uname -r)/kernel/drivers/i2c/$(TARGET).ko
	sudo sed -i s/$(TARGET)// /etc/modules
	sudo depmod
