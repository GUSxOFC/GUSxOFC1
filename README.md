# IP Info Bot - by GusOfc

![Logo](https://img.shields.io/badge/Author-GUSxOFC-blueviolet)
![Status](https://img.shields.io/badge/Status-Tahap%20Perkembangan-red)
![Made in](https://img.shields.io/badge/Made%20With-Bash%20%7C%20Termux-green)

**IP Info Bot** adalah script Termux buatan **GUSxOFC** yang menampilkan informasi lengkap berdasarkan IP publik HP kamu, dengan tampilan super keren dan font yang penuh gaya.

---

## Fitur

- Menampilkan IP publik
- Menampilkan lokasi detail (kota, negara, zona waktu)
- Deteksi provider & koordinat lokasi
- Hitung total pengguna (lokal)
- Tampilan estetis menggunakan `figlet` + `lolcat`
- Informasi bot dan status update

---

## Instalasi

```bash
pkg update && pkg upgrade -y
pkg install git curl figlet lolcat -y
git clone https://github.com/GUSxOFC/ip-info-bot
cd ip-info-bot
bash main.sh

