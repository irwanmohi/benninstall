#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/benkemad/benninstall/master/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${green}Permission Accepted...${NC}"
fi
sleep 0.5
echo "-------------------------------";
echo "---=[ SS - OBFS User Login ]=---";
echo "-------------------------------";
echo ""
data=( `cat /etc/shadowsocks-libev/akun.conf | grep '^###' | cut -d ' ' -f 2`);
x=1
echo "-------------------------------";
echo " User | TLS"
echo "-------------------------------";
for akun in "${data[@]}"
do
port=$(cat /etc/shadowsocks-libev/akun.conf | grep '^port_tls' | cut -d ' ' -f 2 | tr '\n' ' ' | awk '{print $'"$x"'}')
jum=$(lsof -n | grep -i ESTABLISHED | grep obfs-serv | awk '{print $9}' | cut -d':' -f2 | grep -w $port | cut -d- -f2 | grep -v '>127.0.0.1' | sort | uniq | cut -d'>' -f2 | nl)
echo " $akun - $port"
echo "$jum"; x=$(( "$x" + 1 ))
echo "-------------------------------"
done
data=( `cat /etc/shadowsocks-libev/akun.conf | grep '^###' | cut -d ' ' -f 2`);
x=1
echo ""
echo "-------------------------------";
echo " User |  HTTP"
echo "-------------------------------";
for akun in "${data[@]}"
do
port=$(cat /etc/shadowsocks-libev/akun.conf | grep '^port_http' | cut -d ' ' -f 2 | tr '\n' ' ' | awk '{print $'"$x"'}')
jum=$(lsof -n | grep -i ESTABLISHED | grep obfs-serv | awk '{print $9}' | cut -d':' -f2 | grep -w $port | cut -d- -f2 | grep -v '>127.0.0.1' | sort | uniq | cut -d'>' -f2)
echo " $akun - $port"
echo "$jum"; x=$(( "$x" + 1 ))
echo "-------------------------------"
done
echo -e ""


