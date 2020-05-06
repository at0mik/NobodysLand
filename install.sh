cyan='\e[0;36m' 
green='\033[92m'  
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'
purple='\e[1;31m'

echo -e $cyan"Starting the installation..."

mkdir /$HOME/NobodysLand/Modules
cd /$HOME/NobodysLand/Modules

apt-get update && apt full-upgrade -y

apt-get install figlet

apt-get install lolcat

apt-get install mdk4

apt-get install aircrack-ng

apt-get install git

apt-get install xterm

apt-get install links

apt-get install driftnet

git clone https://github.com/s0md3v/XSStrike/

git clone https://github.com/threat9/routersploit/

git clone https://github.com/epsylon/ufonet/

git clone https://github.com/aircrack-ng/mdk4

git clone https://github.com/at0mik/own-exploits

apt-get install metasploit-framework 
apt-get install sshpass

pip2 install pxssh
pip2 install impacket
pip2 install paramiko

cd mdk4

make
sudo make install

clear
