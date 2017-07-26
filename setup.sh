sudo sed -i 's/bluetooth\/bluetoothd/bluetooth\/bluetoothd --compat/' /lib/systemd/system/bluetooth.service

sudo service bluetooth start
sudo hciconfig -a hci0 reset
sudo hciconfig hci0 piscan
