# Bash Script for Hide Phishing URL Created by W8SOJIB

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}
echo ""
echo ""
echo -e " \e[92m 
echo -e " \e[91m   
echo -e " \e[91m ╔══════════════════════════════════════════════════════════════════════════════════════╗
echo -e " \e[91m |\     /| / ___ \       |\     /|(  ____ )( \      (       )(  ___  )(  ____ \| \    /\
echo -e " \e[91m | )   ( |( (___) )      | )   ( || (    )|| (      | () () || (   ) || (    \/|  \  / /
echo -e " \e[91m | |( )| | / ___ \(_____)| |   | ||     __)| |      | |(_)| ||  ___  |(_____  )|   _ (  
echo -e " \e[91m | || || |( (   ) )      | |   | || (\ (   | |      | |   | || (   ) |      ) ||  ( \ \ 
echo -e " \e[91m | () () |( (___) )      | (___) || ) \ \__| (____/\| )   ( || )   ( |/\____) ||  /  \ \
echo -e " \e[91m (_______) \_____/       (_______)|/   \__/(_______/|/     \||/     \|\_______)|_/    \/ \e[91m║ "
echo -e " \e[91m ╚══════════════════════════════════════════════════════════════════════════════════════╝
echo -e " \e[96m  \e[33mSOJIB "
echo ""
echo ""
echo -e " \e[1m          \e[1;91m [\e[1;96m*\e[1;91m] \e[1;97mYouTube  \e[1;91m= \e[5m \e[1;97mW8SOJIB  "
echo ""
echo -e " \e[5m         \e[25m \e[1;91m [\e[1;96m*\e[1;91m] \e[1;97mWebsite  \e[1;91m=  \e[4m\e[1;97mwww.w8sojib.ml\e[24m   "
echo ""
echo -e " \e[1m          \e[1;91m [\e[1;96m*\e[1;91m] \e[1;97mYouTube \e[5m\e[1;91m=  \e[1;97m@WaitVai   \e[93m   "
echo ""
echo ""
echo -e " \e[92m
 __      __  ______   _________________        ____._____________ 
/  \    /  \/  __  \ /   _____/\_____  \      |    |   \______   \
\   \/\/   />      < \_____  \  /   |   \     |    |   ||    |  _/
 \        //   --   \/        \/    |    \/\__|    |   ||    |   \
  \__/\  / \______  /_______  /\_______  /\________|___||______  /
       \/         \/        \/         \/                      \/ 
 \e[32m "
echo ""
echo "" 
echo -n " Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m ### Masking Domain ###\e[0m"
echo -e 'Domain to mask the Phishing URL \e[91m(Ex:\e[96m https://google.com , http://anything.org)\e[0m :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words \e[91m(Ex:\e[96m like, free-money, best-pubg-tricks)'
echo -e "\e[93mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\n\e[95mGenerating W8UrlMask Link...\e[0m\n"
final=$mask-$words@$shorter
echo -e "Here is the Masking OH URL:\e[32m ${final} \e[0m\n"
