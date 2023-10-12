#!/bin/bash
source $HOME/.src/colors.sh

clear

echo -e "${BOLD}${GREEN}   Browsers           Utilities   ${RESET}"
echo "---------------   ------------------"

printf "${BOLD}${WHITE}%s${RESET}" "Firefox"
printf "%*s" $((11 - ${#Firefox})) " "
printf "${BOLD}${WHITE}%s${RESET}\n" "Visual Studio Code"

printf "${BOLD}${WHITE}%s${RESET}" "Chrome"
printf "%*s" $((12 - ${#Chrome})) " "
printf "${BOLD}${WHITE}%s${RESET}\n" "Slack"

printf "${BOLD}${WHITE}%s${RESET}" "Opera (Not Ready)"
printf "%*s" $((13 - ${#Opera})) " "
printf "\n"

printf "${BOLD}${WHITE}%s${RESET}" "Edge (Not Ready)"
printf "%*s" $((13 - ${#Edge})) " "
printf "\n"

printf "${BOLD}${WHITE}%s${RESET}" "Brave (Not Ready)"
printf "%*s" $((13 - ${#Brave})) " "
printf "\n" 

echo "------------------------------------"

echo "Tool Hakkında"
echo "-----------------------"
echo "Bu araç, geliştirme sürecinizde ihtiyaç duyduğunuz"
echo "tarayıcıları veya araçları tek bir komutla Goinfre'ye kurmanıza"
echo "olanak tanır. Bu kurulum, günlük geliştirme süreçlerinizi"
echo "hızlandırmayı amaçlar."
echo ""
echo "Uyarı: Goinfre'ye kurulum nedeniyle başka bir bilgisayara"
echo "geçtiğinizde bu araçları yeniden kurmanız gerekecektir."
echo "-----------------------"

# Kullanım Talimatları
echo "Kullanım Talimatları:"
echo "-----------------------"
echo "Kurulum yapmak için terminalinize 'download' komutunu kullanın."
echo "Örnek Kullanım:"
echo "download firefox vscode slack"
echo ""
echo "Uygulamalara gelen güncellemeler için 'update' komutunu kullanın."
echo "Bunun nedeni uygulamaların güncellemeleri yüklemek için yönetici"
echo "yetkisi gerektirmesidir."
echo "Örnek Kullanım:"
echo "update firefox vscode slack"
echo ""
printf "${BOLD}${WHITE}%s${RESET}" "Eger vscode, chrome ve slack uygulamalarini tek komutla kurmak istiyorsaniz download emre komutunu kullanabilirsiniz."
echo ""
bash label.sh 



