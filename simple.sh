#!/bin/sh

echo_message() {
    echo "\e[1;32m$1\e[0m"
}

echo_message "Updating Package List..."
sudo apt update -y

echo_message "Checking and Installing Wget..."
if ! snap --version > /dev/null 2>&1; then
    echo_message "snap is not installed. Installing wget..."
    sudo apt install snapd -y
else
    echo_message "snap is already installed."
fi

sudo systemctl start snapd
sudo snap install discord

sudo apt update -y

echo_message "Join Channel ..."
firefox https://discord.gg/Npg4hFgkAC