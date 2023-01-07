sudo apt-get update
sudo apt-get install emacs python3-pip bluetooth libbluetooth-dev
sudo python3 -m pip install pybluez
make -C /home/pi/rpi-rgb-led-matrix/
sudo rm -rf initial_install.sh Pictures Downloads Desktop Public Videos Music Templates Documents

sudo mv dbus-org.bluez.service /etc/systemd/system/
sudo mv teslabot.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl restart bluetooth
sudo systemctl enable teslabot.service
sudo systemctl start teslabot.service
sudo sdptoool add SP

#sudo raspi-config nonint do_wifi_country FR
#sudo curl -sL https://install.raspap.com | bash -s -- --yes
#sudo systemctl stop lighttpd.service && sudo systemctl disable lighttpd.service
#sudo rm -rf /etc/init.d/apache2
#sudo chown root tesla_bot && sudo chmod 755 tesla_bot && sudo mv tesla_bot /etc/init.d/

## cp banner_add_hosts /etc/
## then go edit /etc/dnsmasq.conf to remove the hashtag before `addn-hosts=/etc/banner_add_hosts`
## You may need to `sudo systemctl stop lighttpd`