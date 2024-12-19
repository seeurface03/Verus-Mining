#!/bin/bash

# Update Termux and install required packages
echo "Updating Termux and installing necessary dependencies..."
pkg update -y
pkg upgrade -y
pkg install -y git wget curl python3 cmake clang build-essential openssl libhwloc

# Remove existing Verus miner directory if it exists
echo "Cleaning up old files..."
rm -rf ~/verus-miner

# Clone VerusCoin mining repository
echo "Cloning the VerusCoin miner repository..."
git clone https://github.com/JayDDee/cpuminer-multi.git ~/verus-miner
cd ~/verus-miner

# Build the miner
echo "Building the Verus miner..."
./build.sh

# Ensure scripts have executable permissions
echo "Setting executable permissions for scripts..."
chmod +x ~/verus-miner/install.sh ~/verus-miner/start_mining.sh ~/verus-miner/auto_start.sh

# Create mining configuration file
echo "Creating mining configuration file..."
cat > ~/verus-miner/config.txt <<EOL
POOL=na.luckpool.net
PORT=3956
WALLET=your_wallet_address_here  # Replace with your Verus wallet address
THREADS=4  # Adjust based on your CPU
EOL

echo "Installation complete. To start mining, run ./start_mining.sh"
