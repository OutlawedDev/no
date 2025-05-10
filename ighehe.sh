#!/bin/bash
#lol
#cd ~/ && curl -s "https://raw.githubusercontent.com/LunarOSX/Lunar-Install/refs/heads/main/main.sh" | bash </dev/tty

main() {
    clear
    echo -e "Welcome to Lunar"

    echo -e "Install Script Version : 1.0.1"
    
    sleep 2
    
    echo -e "Downloading Lunar..."

    curl "https://github.com/LunarOSX/Lunar-Download" -o "./lunar.zip"

    sleep 3
    
    echo -e "Installing!"

    mkdir ~/Downloads/lunar_temp

    asr restore --source ./Lunar.dmg --target ~/Downloads/lunar_temp --erase

    zip -r ~/Downloads/lunar.zip ~/Downloads/lunar_temp

    rm -rf ~/Downloads/lunar_temp

    rm ./Lunar.dmg

    echo -e "Activating auto Update system"

    exit
}

main
