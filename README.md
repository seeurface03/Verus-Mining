# Verus Mining Program for Termux

An automated Verus Coin mining solution designed for mobile devices using Termux. This program includes features such as auto-setup, auto-start, and GitHub sync for mining stats.

## Features
- Fully automated setup and configuration
- Support for VerusCoin CPU mining
- Auto-start functionality on Termux launch
- GitHub sync for mining stats and configuration

## Installation

1. Install Termux from the [Google Play Store](https://play.google.com).
2. Open Termux and run the following commands:
   ```bash
   pkg update -y
   pkg upgrade -y
   git clone https://github.com/<your-username>/verus-mining-termux.git
   cd verus-mining-termux
   chmod +x install.sh
   ./install.sh

Start Mining
To start mining, run:

./start_mining.sh

To enable auto-start, run:

chmod +x auto_start.sh
./auto_start.sh

Configuration
Edit the config.txt file to set your wallet address, pool, port, and CPU threads:

POOL=na.luckpool.net
PORT=3956
WALLET=your_wallet_address_here
THREADS=4
