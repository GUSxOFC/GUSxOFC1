#!/bin/bash

# Bot Info
owner="GUSxOFC"
version="1.0"
status="kerja jadi agak jelek"
botname="Bot Info by GusOfc"

# Clear layar
clear

# Header bot
echo "============================="
echo "$botname"
echo "Owner: $owner"
echo "Version: $version"
echo "Status: $status"
echo "============================="

# Minta input pengguna
echo ""
read -p "Masukkan link profil TikTok kamu: " link

# Ambil ID TikTok (hanya parsing dari URL)
id=$(echo "$link" | grep -oP '(?<=tiktok.com/@)[^/?]+')

# Cek dan tampilkan
echo ""
if [ -z "$id" ]; then
  echo "Gagal ambil ID TikTok... mungkin link-nya salah?"
else
  echo "ID TikTok kamu adalah: $id"
fi

echo ""
echo "[selesai]"
