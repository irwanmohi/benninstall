mkdir /var/lib/premium-script;
echo "Enter the VPS Subdomain Hostname"
read -p "Hostname / Domain: " host
echo "IP=$host" >> /var/lib/premium-script/ipvps.conf
clear
