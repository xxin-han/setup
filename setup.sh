#!/bin/bash

ORANGE='\033[38;5;208m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
NC='\033[0m'

center_text() {
  term_width=$(tput cols)
  text="$1"
  text_len=${#text}
  padding=$(( (term_width - text_len) / 2 ))
  printf "%*s%s\n" $padding "" "$text"
}

clear

echo -e "${ORANGE}"
center_text "========================================="
center_text "           ╔═╗╔═╗╔═╗╦ ╦╔═╗╔═╗              "
center_text "           ║  ║ ║║  ║ ║╠═╝║╣               "
center_text "           ╚═╝╚═╝╚═╝╚═╝╩  ╚═╝  xXin98      "
center_text "========================================="
echo -e "${NC}"


echo -e "${YELLOW}🚀 Welcome to the xXin98 Setup Script!${NC}"
echo -e "${CYAN}🐦 Follow us on Twitter: @xXin98 {NC}"


sleep 5

#!/bin/bash

#!/bin/bash

# Log file name
LOGFILE="script.log"

# Function to log messages with timestamp
echo_log() {
    echo -e "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOGFILE"
}

echo_log "🕒 Script started at $(date '+%H:%M:%S')..."

# Update and upgrade system
echo_log "📦 Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

echo_log "🌍 Installing Curl..."
sudo apt install -y curl

echo_log "🌍 Setting up Node.js repository..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

echo_log "🛠️ Installing Node.js..."
sudo apt install -y nodejs

echo_log "⚙️ Installing software-properties-common..."
sudo apt install software-properties-common -y

echo_log "🐍 Adding deadsnakes repository for Python..."
sudo add-apt-repository ppa:deadsnakes/ppa -y

echo_log "🔄 Updating package list after adding repository..."
sudo apt update

echo_log "🐍 Installing Python 3.12 and venv..."
sudo apt install -y python3.12 python3.12-venv

echo_log "🔧 Setting Python 3.12 as default..."
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.12 1
sudo update-alternatives --set python /usr/bin/python3.12

echo_log "🐳 Installing dependencies for Docker..."
sudo apt install -y apt-transport-https ca-certificates software-properties-common

echo_log "🔑 Adding Docker GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo_log "📥 Adding Docker repository..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo_log "🔄 Updating package list after adding Docker repository..."
sudo apt update

echo_log "🐳 Installing Docker..."
sudo apt install -y docker-ce docker-ce-cli containerd.io

echo_log "🐳 Installing Docker Compose..."
sudo apt install -y docker-compose

echo_log "✅ Verifying Docker installation..."
docker --version

echo_log "✅ Verifying Docker Compose installation..."
docker-compose --version

echo_log "🌿 Installing Git..."
sudo apt install -y git

echo_log "✅ Verifying Git installation..."
git --version

echo_log "🖥️ Installing Screen..."
sudo apt install -y screen

echo_log "✅ Verifying Screen installation..."
screen --version

echo_log "🖥️ Installing Tmux..."
sudo apt install -y tmux

echo_log "✅ Verifying Tmux installation..."
tmux -V

echo_log "🚀 Installing Go..."
sudo apt install -y golang-go

echo_log "✅ Verifying Go installation..."
go version

echo_log "🔗 Installing RUST..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustc --version

curl -L https://risczero.com/install | bash
source "$HOME/.cargo/env"

source "/root/.bashrc"

echo_log "✅ Verifying RZup installation..."
rzup install
export PATH="$HOME/.cargo/bin:$PATH"
source "$HOME/.cargo/env"

echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
rzup --version

echo_log "✅ Installing Seq..."
apt install -y coreutils
seq --version

echo_log "✅ Installing Jq..."
apt install jq

echo_log "✅ Installing Bc..."
apt install bc

echo_log "✅ Installing Htop..."
apt install htop
echo_log "✅ Installing PV..."
apt install pv
echo_log "All processes completed at $(date '+%H:%M:%S')! System is ready to use! 🚀"
