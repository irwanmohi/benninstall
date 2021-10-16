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
echo " "
echo "===========================================";
echo " ";
if [ -e "/root/log-limit.txt" ]; then
echo "Pengguna Yang Melanggar Batas Maksimum";
echo "Waktu - Username - Banyak Multilogin"
echo "-------------------------------------";
cat /root/log-limit.txt
else
echo " Tidak ada pengguna yang melakukan pelanggaran"
echo " "
echo " atau"
echo " "
echo " Skrip User-Limit belum dijalankan"
fi
echo " ";
echo "===========================================";
echo "";
echo " ";
