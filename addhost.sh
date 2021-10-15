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
mkdir /var/lib/premium-script;
echo "Enter the VPS Subdomain Hostname"
read -p "Hostname / Domain: " host
echo "IP=$host" >> /var/lib/premium-script/ipvps.conf
clear
