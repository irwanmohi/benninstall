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
accel-cmd show sessions
echo ""
echo ""
