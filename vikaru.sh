#!/bin/bash

# Author - github : Maxz-09
# Author - no wa : +6289508899033

# Color List
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
    echo -e $putih " "
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
    echo -e $putih " "
    apt install git -y
    echo
    sleep 1
    echo -e $hijau " • [✓] Git installed"
    echo
fi
    dpkg -s bash &> /dev/null
if [ $? -eq 0 ];then
    echo -e $hijau " • [✓] Bash installed"
    sleep 1
    else
    echo
    echo -e $kuning " • [/] Installing Bash...."|pv -qL 30
    echo -e $putih " "
    apt install bash -y
    echo
    sleep 1
    echo -e $hijau " • [✓] Bash installed"
    echo
fi
    dpkg -s nodejs-lts &> /dev/null
if [ $? -eq 0 ];then
    echo -e $hijau " • [✓] Nodejs-lts installed"
    sleep 1
    else
    echo
    echo -e $kuning " • [/] Installing Nodejs-lts...."|pv -qL 30
    echo -e $putih " "
    apt install nodejs-lts -y
    echo
    sleep 1
    echo -e $hijau " • [✓] Nodejs-lts installed"
    echo
fi
    dpkg -s libwebp &> /dev/null
if [ $? -eq 0 ];then
    echo -e $hijau " • [✓] Libwebp installed"
    sleep 1
    else
    echo
    echo -e $kuning " • [/] Installing Libwebp...."|pv -qL 30
    echo -e $putih " "
    apt install libwebp -y
    echo
    sleep 1
    echo -e $hijau " • [✓] Libwebp installed"
    echo
fi
    dpkg -s ffmpeg &> /dev/null
if [ $? -eq 0 ];then
    echo -e $hijau " • [✓] Ffmpeg installed"
    sleep 1
    else
    echo
    echo -e $kuning " • [/] Installing Ffmpeg...."|pv -qL 30
    echo -e $putih " "
    apt install ffmpeg -y
    echo
    sleep 1
    echo -e $hijau " • [✓] Ffmpeg installed"
    echo
    fi
    sleep 1
    echo -e $putih "-----------------------------"
    echo -e $hijau " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    clear
    menu
}

# Vikaru-Menu
menu() {
    echo -e -n $putih;figlet "Vikaru-Menu"
    echo -e $putih "-----------------------------"
    echo -e " # Select an options [1-6] :"
    echo -e $putih "-----------------------------"
    echo -e " • [1] Create bot directory ( 1x only )"
    echo -e " • [2] Ar-Vikaru-Bot ( install )"
    echo -e " • [3] Base-Vikaru-Md ( install )"
    echo -e " • [4] Base-Vikaru-Md ( start )"
    echo -e " • [5] All script ( update )"
    echo -e " • [6] Exit"
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
    mv vikaru.sh /storage/emulated/0/.vikaru-bot
    mv .git /storage/emulated/0/.vikaru-bot
    echo -e $putih "-----------------------------"
    echo -e $hijau " # [✓] mkdir /storage/emulated/0/.vikaru-bot"|pv -qL 30
    sleep 1
    echo -e $hijau " # [✓] mv vikaru.sh"
    sleep 1
    echo -e $kuning " # [!] Start this cmd :"
    echo -e $putih " "
    echo -e $putih " cd /storage/emulated/0/.vikaru-bot && bash vikaru.sh"
    exit
elif [ $pil == "2" ];then
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
elif [ $pil == "3" ];then
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
elif [ $pil == "4" ];then
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
elif [ $pil == "5" ];then
    echo
    echo -e $kuning " # [/] Update..."
    echo -e $putih "-----------------------------"
    echo -e $hijau " • [/] Vikaru-Menu :"
    echo -e $putih " "
    cd /storage/emulated/0/.vikaru-bot/
    git config --global --add safe.directory /storage/emulated/0/.vikaru-bot/
    git pull
    echo
    echo -e $hijau " • [/] Ar-Vikaru-Bot :"
    echo -e $putih
    cd /storage/emulated/0/.vikaru-bot/ar-vikaru-bot/
    git config --global --add safe.directory /storage/emulated/0/.vikaru-bot/ar-vikaru-bot/
    git pull
    echo -e $putih "-----------------------------"
    echo -e $hijau " # [✓]  Succssesfully"
    sleep 3
    exit
elif [ $pil == "6" ];then
    echo
    echo -e $hijau" # [✓] Exit"
    exit
else
    echo -e $merah" # [!] Input denied"
    sleep 1
    menu
fi
}
# Start
enter
