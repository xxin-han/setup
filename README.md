# VPS Setup Script

This script automates the setup of a VPS by installing essential dependencies and development tools, including Node.js, Python 3.12, Docker, Go, Rust, and utilities like Git, Screen, and Tmux.

## Features

- System update and upgrade
- Installs Node.js 20.x
- Installs Python 3.12 with venv
- Installs Docker & Docker Compose
- Installs Go and Rust programming languages
- Installs useful CLI utilities (git, screen, tmux, htop, jq, bc, pv)
- Sets environment variables for Rust and related tools
- Verifies all installations

## Usage

Run the script :

   ```bash
  wget https://github.com/xxin-han/setup/raw/main/setup.sh -O setup.sh && chmod +x setup.sh && ./setup.sh
   ```