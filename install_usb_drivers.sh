sudo su

modprobe usbserial
modprobe ftdi_sio
modprobe cdc-acm

cd /lib/modules/

sudo wget https://github.com/alexcodito/SynologyZigbee/raw/main/drivers/ch341.ko
sudo insmod /lib/modules/ch341.ko
sudo wget https://github.com/alexcodito/SynologyZigbee/raw/main/drivers/cp210x.ko
sudo insmod /lib/modules/cp210x.ko
sudo wget https://github.com/alexcodito/SynologyZigbee/raw/main/drivers/pl2303.ko
sudo insmod /lib/modules/pl2303.ko
sudo wget https://github.com/alexcodito/SynologyZigbee/raw/main/drivers/ti_usb_3410_5052.ko
sudo insmod /lib/modules/ti_usb_3410_5052.ko

# Configure an autoload script

cd  /usr/local/etc/rc.d/
sudo wget https://github.com/alexcodito/SynologyZigbee/raw/main/start_usb_drivers.sh
sudo chmod +x start-usb-drivers.sh
sudo /usr/local/etc/rc.d/start-usb-drivers.sh start