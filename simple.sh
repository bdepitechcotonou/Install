#!/bin/sh

echo_message() {
    echo "\e[1;32m$1\e[0m"
}

echo_message "Updating Package List..."
sudo apt update

echo_message "Checking and Installing Wget..."
if ! snap --version > /dev/null 2>&1; then
    echo_message "snap is not installed. Installing wget..."
    sudo apt install snapd -y
else
    echo_message "snap is already installed."
fi

sudo snap install discord