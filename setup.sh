#### setup work

#download raspian / raspeberry pi os
#burn image to sd card
#create blank file 'ssh' on /Volumes/boot/ssh
#create wpa_supplicant.conf in /Volumes/boot

#change hostname/password
#sudo raspi-config (interactive mode)

####
#actual script
####


#update & upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

#update pip
pip install --upgrade pip

#get the keyserv script
cd /home/pi
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/LordAdakos/keyserv/main/keyserv.py
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/LordAdakos/keyserv/main/keyserv.service

sudo cp /home/pi/keyserv.service /etc/systemd/system/keyserv.service

#if we wanted to interactively edit the script this is the way
#sudo systemctl --force --full edit keyserv.service

#restart the service
sudo systemctl daemon-reload

#start the service
sudo systemctl enable --now keyserv.service


#systemctl status keyserv.service
 
#we should probably reboot
#sudo reboot