#!/bin/bash
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'

clear 
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
MYIP=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "   \e[032;1mCPU Model:\e[0m $cname"
	echo -e "   \e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e "   \e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e "   \e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "   \e[032;1mSystem Uptime:\e[0m $up"
	echo -e "   \e[032;1mIsp Name:\e[0m $ISP"
	echo -e "   \e[032;1mCity:\e[0m $CITY"
	echo -e "   \e[032;1mTime:\e[0m $WKT"
	echo -e "   \e[033;1mIPVPS:\e[0m $IPVPS"
echo -e  ""
echo -e  "   -------------------------MENU OPTIONS------------------------" 
echo -e   "   1\e[1;33m)\e[m Running Clash"
echo -e   "   2\e[1;33m)\e[m Edit Config Vmess"
echo -e   "   3\e[1;33m)\e[m Edit Config Trojan"
echo -e   "   4\e[1;33m)\e[m Ganti Dasboard Pannel Clash  Balck"
echo -e   "   5\e[1;33m)\e[m Ganti Dasboard Pannel Clash White"
#echo -e   "   6\e[1;33m)\e[m 
#echo -e   "   7\e[1;33m)\e[m 
#echo -e   "   8\e[1;33m)\e[m 
echo -e   "  \e[1;32m------------------------------------------------------------\e[m"
echo -e   "   x)   Exit" 
echo -e   "  \e[1;32m------------------------------------------------------------\e[m"
echo -e   ""
read -p "     Select From Options [1-8 or x] :  " menu
echo -e   ""
case $menu in
1)
clear
clash
;;
2)
clear
micro .config/clash/vmess.yaml
;;
3)
clear
micro .config/clash/trojan.yaml
;;
4)
clear
cd .config/clash
rm -rf yacd-gh-pages
unzip yacd-gh-pages2.zip
mv yacd-gh-pages2 yacd-gh-pages
clash -t
clear
echo -e "HAPUS CACHE BROWSER"
cd
;;
5)
clear
cd .config/clash
rm -rf yacd-gh-pages
unzip yacd-gh-pages1.zip
mv yacd-gh-pages1 yacd-gh-pages
clash -t
clear
echo -e "HAPUS CACHE BROWSER"
cd
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac
