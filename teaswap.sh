#!/bin/bash

echo "🚀 Setup lingkungan untuk TeaSwap"

# 1. Update system
echo "🔄 Updating package list..."
sudo apt update && sudo apt upgrade -y

# 2. Install curl dan build-essential
echo "📦 Installing curl and build tools..."
sudo apt install curl build-essential -y

# 3. Install Node.js & npm (LTS versi terbaru)
echo "⬇️ Installing Node.js LTS..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install nodejs -y

# 4. Cek versi
node -v
npm -v

# 6. Inisialisasi npm
echo "🧱 Inisialisasi npm project..."
npm init -y

# 7. Install dependencies
echo "📦 Install dependency: ethers, dotenv, prompt-sync..."
npm install ethers dotenv prompt-sync

# 8. Buat file .env kosong (user bisa edit manual nanti)
echo "🔐 Membuat file .env..."
cat <<EOL > .env
PRIVATE_KEY=
RPC_URL=https://tea-sepolia.g.alchemy.com/public
EOL

# 9. Pesan selesai
echo "▶️ Jalankan script dengan: node teaswap.js"
