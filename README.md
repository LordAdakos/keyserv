# keyserv
raspberry pi w keyboard server and interpreter

listens for connections and relays keystrokes as a keyboard would

setup.sh should update the pi zero w, set the environment up properly, download the script, set up the service, reboot

workflow == 

ssh into pi

wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/LordAdakos/keyserv/main/setup.sh
execute script ./setup.sh 


#cocnerns
figure out why SERVER = socket.gethostbyname(socket.gethostname()) doesn't work in keyserv.py and why have to hardcode the ipv4 addr in


#troubleshooting
once installed, if anything doesn't work just unplug the pi and plug it back in
