#!/bin/bash

# Warna & Efek
red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;34m'
cyan='\033[1;36m'
yellow='\033[1;33m'
white='\033[1;37m'
bold='\033[1m'
nc='\033[0m'

clear

# Tampilan Logo & Header
figlet -f slant "GUSxOFC" | lolcat
echo -e "${bold}${cyan}        IP INFO BOT - by GusOfc Ganteng${nc}"
echo -e "${white}===========================================${nc}"
echo -e "${yellow}Nama Owner     : ${green}GUSxOFC"
echo -e "${yellow}Dibuat Pada    : ${green}21 Mei 2025"
echo -e "${yellow}Status Script  : ${red}Tahap Perkembangan Bro Telaso"
echo -e "${white}===========================================${nc}"

# Total pengguna lokal
if [ ! -f user-count.txt ]; then
  echo 1 > user-count.txt
else
  count=$(cat user-count.txt)
  count=$((count+1))
  echo $count > user-count.txt
fi
total=$(cat user-count.txt)
echo -e "${cyan}Total Pengguna : ${bold}$total${nc}"
echo ""

# Ambil info IP
echo -e "${blue}Mengambil informasi IP...${nc}"
ip_info=$(curl -s https://ipinfo.io)

ip=$(echo "$ip_info" | grep ip | awk -F'"' '{print $4}')
city=$(echo "$ip_info" | grep city | awk -F'"' '{print $4}')
region=$(echo "$ip_info" | grep region | awk -F'"' '{print $4}')
country=$(echo "$ip_info" | grep country | awk -F'"' '{print $4}')
org=$(echo "$ip_info" | grep org | awk -F'"' '{print $4}')
loc=$(echo "$ip_info" | grep loc | awk -F'"' '{print $4}')
timezone=$(echo "$ip_info" | grep timezone | awk -F'"' '{print $4}')

# Tampilkan info IP
echo -e "${green}IP Anda        : $ip"
echo -e "Lokasi         : $city, $region - $country"
echo -e "Koordinat      : $loc"
echo -e "Provider       : $org"
echo -e "Zona Waktu     : $timezone${nc}"
echo ""

# Penutup
echo -e "${bold}${white}Terima kasih telah menggunakan bot dari ${cyan}GUSxOFC${nc}"
