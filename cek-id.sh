#!/bin/bash

# Info bot
echo "Bot Info by GusOfc"
echo "Owner: GUSxOFC"
echo "Version: 1.0"
echo "Status: kerja jadi agak jelek"
echo "============================="

# Minta link profil TikTok
read -p "Masukkan link profil TikTok kamu: " url

# Ambil source HTML
html=$(curl -s -L "$url")

# Cari ID angka dari JSON di source page
id=$(echo "$html" | grep -oP '"id":"\d+"' | head -n 1 | grep -oP '\d+')

# Tampilkan hasil
echo ""
if [ -z "$id" ]; then
  echo "Gagal menemukan ID angka TikTok. Link mungkin salah atau dilindungi."
else
  echo "ID Angka TikTok kamu adalah: $id"
fi
