#!/bin/sh

echo_message() {
    echo "\e[1;32m$1\e[0m"
}

echo_message "Checking and Installing Wget..."
if ! wget --version > /dev/null 2>&1; then
    echo "wget is not installed. Installing wget..."
    sudo apt-get install wget -y
else
    echo "wget is already installed."
fi

echo_message "Unpacking Discord Tar..."
sudo tar -xvzf discord-0.0.72.tar.gz -C /opt

echo_message "Creating Symlink..."
sudo ln -sf -v /opt/Discord/Discord /usr/bin/Discord

echo_message "Creating Desktop Entry..."
sudo cp -r -v /opt/Discord/discord.desktop /usr/share/applications

echo_message "Join Channel ..."
firefox https://discord.gg/Npg4hFgkAC