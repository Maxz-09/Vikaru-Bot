#!/bin/bash

# Author - github : Maxz-09
# Author - no wa : +6289508899033

# Color
putih="\033[00m"
merah="\033[31m"
hijau="\033[32m"
kuning="\033[33m"

# Confirm resource check 
enter() {
    echo
    echo -e $putih " # [!] Checking system files, make sure your internet is Good"
    read -r -s -p $'  # [?] Press enter to continue....\n'
    function back_option () {
        clear 
    }
    cekfile
    }

# Cek Resources
cekfile() {
    echo
    echo -e $kuning " # [!] Detect resource...."|pv -qL 30
    echo -e $putih "-----------------------------"
    sleep 2
    dpkg -s figlet &> /dev/null
if [ $? -eq 0 ];then
    echo -e $hijau " • [✓] Figlet installed"
    sleep 1
    else
    echo
    echo -e $kuning " • [/] Installing Figlet...."|pv -qL 30
    echo
    apt install figlet -y
    echo
    sleep 1
    echo -e $hijau " • [✓] Figlet installed"
    echo
fi
    dpkg -s git &> /dev/null
if [ $? -eq 0 ];then
    echo -e $hijau " • [✓] Git installed"
    sleep 1
    else
    echo
    echo -e $kuning " • [/] Installing Git...."|pv -qL 30
    echo
    apt install git -y
    echo
    sleep 1
    echo -e $hijau " • [✓] Git installed"
    echo
fi
    dpkg -s nodejs &> /dev/null
if [ $? -eq 0 ];then
    echo -e $hijau " • [✓] Nodejs installed"
    sleep 1
    else
    echo
    echo -e $kuning " • [/] Installing Nodejs...."|pv -qL 30
    echo
    apt install nodejs -y
    echo
    sleep 1
    echo -e $hijau " • [✓] Nodejs installed"
    echo
    fi
    sleep 1
    echo -e $putih "-----------------------------"
    echo -e $hijau " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    clear
    menu
}

# Menu
menu() {
    echo -e -n $putih;figlet "Vikaru-Menu"
    echo -e $putih "-----------------------------"
    echo -e " # Select an options [1/3] :"
    echo -e $putih "-----------------------------"
    echo -e " • [1] Create bot directory ( 1x only )"
    echo -e " • [2] Ar-Vikaru-Bot ( install )"
    echo -e " • [3] Base-Vikaru-Md ( install )"
    echo -e " • [4] Base-Vikaru-Md ( start )"
    echo -e " • [5] Exit"
    echo
    mainmenu
    }

# Main menu
mainmenu() {
    echo -e -n " # Select > ";read pil
    echo
if [ $pil == "1" ];then
    clear
    echo -e -n $putih;figlet "Mkdir"
    echo -e "Author : Maxtream_09"
    echo -e "GitHub : Maxz-09"
    sleep 1
    echo
    mkdir /storage/emulated/0/.vikaru-bot
    echo -e $hijau " # [add] /storage/emulated/0/.vikaru-bot"|pv -qL 30
    sleep 3
    menu
fi
if [ $pil == "2" ];then
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $putih;figlet "Install-Bot"
    echo -e "Author : Maxtream_09"
    echo -e "GitHub : Maxz-09"
    sleep 1
    echo
    echo -e $hijau " • [/] Install Ar-Vikaru-Bot...."|pv -qL 30
    sleep 1
    echo -e $putih
    git clone https://github.com/Maxz-09/ar-vikaru-bot
    echo 
    echo -e $hijau " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    menu
fi
if [ $pil == "3" ];then
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $putih;figlet "Isntall-Md"
    echo -e "Author : Maxtream_09"
    echo -e "GitHub : Maxz-09"
    sleep 1
    echo 
    echo -e $kuning " • [/] Installing Bot...."|pv -qL 30
    echo -e $putih " " 
    git clone https://github.com/Maxz-09/base-vikaru-md
    sleep 1
    echo 
    echo -e $kuning " • [/] Installing module...."|pv -qL 30
    echo -e $putih " "
    cd /storage/emulated/0/.vikaru-bot/base-vikaru-md
    yarn install -y
    echo 
    echo -e $hijau " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    menu
fi
if [ $pil == "4" ];then
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $putih;figlet "Start-Md"
    echo -e "Author : Maxtream_09"
    echo -e "GitHub : Maxz-09"
    sleep 1
    echo
    echo -e $hijau " • [/] Start bot...."|pv -qL 30
    sleep 1
    echo -e $putih
    cd base-vikaru-md
    npm start
fi
if [ $pil == "5" ];then
    echo
    echo -e $hijau" # [✓] Exit"
    exit
    else
    echo
    echo -e $merah" # [!] Input denied"
    sleep 3
    menu
fi
}

# Start
enter