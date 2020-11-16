#!/bin/bash

IP=`curl icanhazip.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`


# Modifikasi Terminal

blue='\e[1;34m'
green='\e[0;23m'
purple='\e[1;35m'
cyan='\e[1;36m'
red='\e[1;32m'

echo ""
echo -e $purple"      =====================================================" 
sleep 1
echo -e $green "      #                                                   #" 
sleep 1
echo -e $purple "      #                 [MEMBUAT AKUN TRIAL]              #" 
sleep 1
echo -e $blue "      #                                                   #" 
sleep 1
echo -e $green "      #                   Mohon menunggu                  #" 
sleep 1
echo -e $red "      #                                                   #" 
sleep 1
echo -e $blue "      #              Akun Telah Berhasil Dibuat           #" 
sleep 1
echo -e $red "      #                                                  #" 
sleep 1
echo -e $purple "      #                  Terima Kasih                   #" 
sleep 1
echo -e $green "      #                                                   #" 
sleep 1
echo -e $cyan "      #     Copyright © AndiMuhammadIhzarafi™ Premium 2017     #" 
sleep 1
echo -e $purple "      =====================================================" 
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "--------------------------------------"
echo -e " Trial account creation successfully"
echo -e "--------------------------------------"
echo -e "         Configuration Detail"
echo -e "--------------------------------------"
echo -e ""
echo -e "Host         : $IP"
echo -e "Username     : $Login"
echo -e "Password     : $Pass"
echo -e "Exp account  : $exp"
echo -e "Port OpenSSH : 22"
echo -e "Port Dropbear: 109,110,143"
echo -e "Port SSL     : 443,777,990"
echo -e "BadVPN UDPGW : 7200,7300"
echo -e "Squid Proxy  : 80,3128,8080"
echo -e "OpenVPN TCP  : http://$IP:81/client-tcp-1194.ovpn"
echo -e "OpenVPN SSL  : http://$IP:81/client-udp-2200.ovpn"
echo -e "OpenVPN UDP  : http://$IP:81/client-ssl-2905.ovpn"
echo -e ""
echo -e "--------------------------------------"
echo -e "-)No Torrent"
echo -e "-)No Carding"
echo -e "-)No illegal activity"
echo -e "-)Max Login 2 Devices"
echo -e "-)If Not follow the Rule your account"
echo -e "  Will be banned"
echo -e "--------------------------------------"
echo -e ""
echo -e "mod by \e[1;21;40mkemaddd\e[0m"
