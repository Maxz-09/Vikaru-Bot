#!/bin/bash

# Author - github : Maxz-09
# Author - no wa : +6289508899033

# Path to the file that stores the password
PASSWORD_FILE = ".pw.txt"

# Color List
white = "\033[00m"
red = "\033[31m"
green = "\033[32m"
yellow = "\033[33m"

# Confirm resource check
enter() {
    clear
    echo -e -n $white; figlet "  Check file"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo
    echo -e $white " # [!] Checking system files, make sure your internet is Good!"|pv -qL 30
    sleep 1
    read -r -s -p $'  • [?] Press enter to continue....\n'
    function back_option () {
        clear
    }
    cekfile
}

# Cek Resources
cekfile() {
    echo
    echo -e $white "=-----------------------------"
    echo -e $yellow " # [!] Detect resource...."
    echo -e $white "=-----------------------------"
    sleep 2
    dpkg -s figlet &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Figlet installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Figlet...."|pv -qL 30
    echo -e $white " "
    apt install figlet -y
    echo
    sleep 1
    echo -e $green " • [✓] Figlet installed"
    echo
    fi
    dpkg -s pv &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Pv installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Pv...."|pv -qL 30
    echo -e $white " "
    apt install pv -y
    echo
    sleep 1
    echo -e $green " • [✓] Pv installed"
    echo
    fi
    dpkg -s git &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Git installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Git...."|pv -qL 30
    echo -e $white " "
    apt install git -y
    echo
    sleep 1
    echo -e $green " • [✓] Git installed"
    echo
    fi
    dpkg -s bash &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Bash installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Bash...."|pv -qL 30
    echo -e $white " "
    apt install bash -y
    echo
    sleep 1
    echo -e $green " • [✓] Bash installed"
    echo
    fi
    dpkg -s nodejs-lts &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Nodejs-lts installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Nodejs-lts...."|pv -qL 30
    echo -e $white " "
    apt install nodejs-lts -y
    echo
    sleep 1
    echo -e $green " • [✓] Nodejs-lts installed"
    echo
    fi
    dpkg -s libwebp &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Libwebp installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Libwebp...."|pv -qL 30
    echo -e $white " "
    apt install libwebp -y
    echo
    sleep 1
    echo -e $green " • [✓] Libwebp installed"
    echo
    fi
    dpkg -s ffmpeg &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Ffmpeg installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Ffmpeg...."|pv -qL 30
    echo -e $white " "
    apt install ffmpeg -y
    echo
    sleep 1
    echo -e $green " • [✓] Ffmpeg installed"
    echo
    fi
    echo -e $white "-----------------------------"
    sleep 2
    echo -e $green " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    clear
    menu
}

# Vikaru-Menu
menu() {
    echo -e -n $white; figlet "Vikaru-Menu"
    echo -e $white "=-----------------------------"
    echo -e "  # Select an options [1-6] :"
    echo -e $white "=-----------------------------"
    echo -e " [1] Create bot directory ( 1x only )"
    echo -e " [2] Ar-Vikaru-Bot ( install )"
    echo -e " [3] Base-Vikaru-Md ( install )"
    echo -e " [4] Base-Vikaru-Md ( start )"
    echo -e " [5] All script ( update )"
    echo -e " [6] Exit"
    echo
    mainmenu
}

# Main menu
mainmenu() {
    echo -e -n " # Select > "; read pil
    echo
    if [$pil == "1"]; then
    clear
    echo -e -n $white; figlet "  Mkdir"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo
    mkdir /storage/emulated/0/.vikaru-bot
    mv vikaru.sh /storage/emulated/0/.vikaru-bot
    mv .git /storage/emulated/0/.vikaru-bot
    mv .pw.txt /storage/emulated/0/.vikaru-bot
    echo "echo 'cd /storage/emulated/0/.vikaru-bot && bash vikaru.sh'" > "vikaru.sh"
    echo -e $white "-----------------------------"
    echo -e $green " # [✓] mkdir /storage/emulated/0/.vikaru-bot"|pv -qL 30
    sleep 1
    echo -e $green " # [✓] mv vikaru.sh"|pv -qL 30
    echo -e $white "-----------------------------"
    sleep 2
    echo -e $yellow " # [!] Start this cmd :"
    echo -e $white " "
    echo -e $white " cd /storage/emulated/0/.vikaru-bot && bash vikaru.sh"|pv -qL 30
    exit
    elif [$pil == "2"]; then
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $white; figlet "  Vikaru-Bot"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo
    echo -e $green " • [/] Install Ar-Vikaru-Bot...."|pv -qL 30
    sleep 1
    echo -e $white
    git clone https://github.com/Maxz-09/ar-vikaru-bot
    echo
    echo -e $green " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    menu
    elif [$pil == "3"]; then
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $white; figlet "  Vikaru-Md"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo
    echo -e $yellow " • [/] Installing Bot...."|pv -qL 30
    echo -e $white " "
    git clone https://github.com/Maxz-09/base-vikaru-md
    sleep 1
    echo
    echo -e $yellow " • [/] Installing module...."|pv -qL 30
    echo -e $white " "
    cd /storage/emulated/0/.vikaru-bot/base-vikaru-md
    yarn install -y
    echo
    echo -e $green " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    menu
    elif [$pil == "4"]; then
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $white; figlet "  Start-Md"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo
    echo -e $green " • [/] Start bot...."|pv -qL 30
    sleep 1
    echo -e $white
    cd base-vikaru-md
    npm start
    elif [$pil == "5"]; then
    echo
    echo -e $yellow " # [/] Update..."|pv -qL 30
    echo -e $white "-----------------------------"
    echo -e $green " • [/] Vikaru-Menu :"
    echo -e $white " "
    cd /storage/emulated/0/.vikaru-bot/
    git config --global --add safe.directory /storage/emulated/0/.vikaru-bot/
    git pull
    echo
    echo -e $green " • [/] Ar-Vikaru-Bot :"
    echo -e $white
    cd /storage/emulated/0/.vikaru-bot/ar-vikaru-bot
    git config --global --add safe.directory /storage/emulated/0/.vikaru-bot/ar-vikaru-bot/
    git pull
    echo -e $white "-----------------------------"
    sleep 1
    echo -e $green " # [✓]  Succssesfully"|pv -qL 30
    sleep 3
    exit
    elif [$pil == "6"]; then
    echo -e $green" # [✓] Exit"
    exit 1
    else
        echo -e $red" # [!] Input denied"|pv -qL 30
    sleep 1
    menu
    fi
}

# Function to request a new password
set_password() {
    clear
    echo -e -n $white; figlet "  Sign up"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    echo
    echo -e $white "=-----------------------------"
    echo -e $yellow " # [!] Please create your password...."
    echo -e $white "=-----------------------------"
    sleep 1
    read -p $'  • [?] Enter Password   : ' new_password
    read -s -p $'  • [?] Confirm password : ' confirm_password
    echo
    echo -e $white "-----------------------------"
    sleep 1

    if ["$new_password" != "$confirm_password"]; then
    echo -e $red " # [x] password not found, try again..."|pv -qL 30
    sleep 2
    set_password
    else
        echo "$new_password" > "$PASSWORD_FILE"
    echo -e $green " # [✓] Password successfully set."|pv -qL 30
    sleep 1
    echo
    echo -e $yellow " # [!] Start this cmd :" $white "bash vikaru.sh"|pv -qL 30
    echo -e $white " "
    fi
}

# Function to check password
check_password() {
    clear
    echo -e -n $white; figlet "  Login"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    echo
    sleep 1
    echo -e $white " # [!] Please login to continue...."|pv -qL 30
    sleep 1
    read -s -p $'  • [?] Enter password : ' entered_password
    echo
    echo -e $white "-----------------------------"
    sleep 1

    stored_password = $( < "$PASSWORD_FILE")

    if ["$entered_password" == "$stored_password"]; then
    echo -e $green " # [✓] Login successfully"|pv -qL 30
    sleep 2
    enter
    else
        echo -e $red " # [x] Password not found, try again....."|pv -qL 30
    sleep 2
    echo -e $white " "
    check_password
    fi
}

# Check if the password is set
if [! -f "$PASSWORD_FILE"]; then
set_password
else
    check_password
fi#!/bin/bash

# Author - github : Maxz-09
# Author - no wa : +6289508899033

# Path to the file that stores the password
PASSWORD_FILE = ".pw.txt"

# Color List
white = "\033[00m"
red = "\033[31m"
green = "\033[32m"
yellow = "\033[33m"

# Confirm resource check
enter() {
    clear
    echo -e -n $white; figlet "  Check file"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo
    echo -e $white " # [!] Checking system files, make sure your internet is Good!"|pv -qL 30
    sleep 1
    read -r -s -p $'  • [?] Press enter to continue....\n'
    function back_option () {
        clear
    }
    cekfile
}

# Cek Resources
cekfile() {
    echo
    echo -e $white "=-----------------------------"
    echo -e $yellow " # [!] Detect resource...."
    echo -e $white "=-----------------------------"
    sleep 2
    dpkg -s figlet &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Figlet installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Figlet...."|pv -qL 30
    echo -e $white " "
    apt install figlet -y
    echo
    sleep 1
    echo -e $green " • [✓] Figlet installed"
    echo
    fi
    dpkg -s pv &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Pv installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Pv...."|pv -qL 30
    echo -e $white " "
    apt install pv -y
    echo
    sleep 1
    echo -e $green " • [✓] Pv installed"
    echo
    fi
    dpkg -s git &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Git installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Git...."|pv -qL 30
    echo -e $white " "
    apt install git -y
    echo
    sleep 1
    echo -e $green " • [✓] Git installed"
    echo
    fi
    dpkg -s bash &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Bash installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Bash...."|pv -qL 30
    echo -e $white " "
    apt install bash -y
    echo
    sleep 1
    echo -e $green " • [✓] Bash installed"
    echo
    fi
    dpkg -s nodejs-lts &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Nodejs-lts installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Nodejs-lts...."|pv -qL 30
    echo -e $white " "
    apt install nodejs-lts -y
    echo
    sleep 1
    echo -e $green " • [✓] Nodejs-lts installed"
    echo
    fi
    dpkg -s libwebp &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Libwebp installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Libwebp...."|pv -qL 30
    echo -e $white " "
    apt install libwebp -y
    echo
    sleep 1
    echo -e $green " • [✓] Libwebp installed"
    echo
    fi
    dpkg -s ffmpeg &> /dev/null
    if [$? -eq 0]; then
    echo -e $green " • [✓] Ffmpeg installed"
    else
        echo
    sleep 1
    echo -e $yellow " • [/] Installing Ffmpeg...."|pv -qL 30
    echo -e $white " "
    apt install ffmpeg -y
    echo
    sleep 1
    echo -e $green " • [✓] Ffmpeg installed"
    echo
    fi
    echo -e $white "-----------------------------"
    sleep 2
    echo -e $green " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    clear
    menu
}

# Vikaru-Menu
menu() {
    echo -e -n $white; figlet "Vikaru-Menu"
    echo -e $white "=-----------------------------"
    echo -e "  # Select an options [1-6] :"
    echo -e $white "=-----------------------------"
    echo -e " [1] Create bot directory ( 1x only )"
    echo -e " [2] Ar-Vikaru-Bot ( install )"
    echo -e " [3] Base-Vikaru-Md ( install )"
    echo -e " [4] Base-Vikaru-Md ( start )"
    echo -e " [5] All script ( update )"
    echo -e " [6] Exit"
    echo
    mainmenu
}

# Main menu
mainmenu() {
    echo -e -n " # Select > "; read pil
    echo
    if [$pil == "1"]; then
    clear
    echo -e -n $white; figlet "  Mkdir"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo
    mkdir /storage/emulated/0/.vikaru-bot
    mv vikaru.sh /storage/emulated/0/.vikaru-bot
    mv .git /storage/emulated/0/.vikaru-bot
    mv .pw.txt /storage/emulated/0/.vikaru-bot
    echo "echo 'cd /storage/emulated/0/.vikaru-bot && bash vikaru.sh'" > "vikaru.sh"
    echo -e $white "-----------------------------"
    echo -e $green " # [✓] mkdir /storage/emulated/0/.vikaru-bot"|pv -qL 30
    sleep 1
    echo -e $green " # [✓] mv vikaru.sh"|pv -qL 30
    echo -e $white "-----------------------------"
    sleep 2
    echo -e $yellow " # [!] Start this cmd :"
    echo -e $white " "
    echo -e $white " cd /storage/emulated/0/.vikaru-bot && bash vikaru.sh"|pv -qL 30
    exit
    elif [$pil == "2"]; then
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $white; figlet "  Vikaru-Bot"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo
    echo -e $green " • [/] Install Ar-Vikaru-Bot...."|pv -qL 30
    sleep 1
    echo -e $white
    git clone https://github.com/Maxz-09/ar-vikaru-bot
    echo
    echo -e $green " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    menu
    elif [$pil == "3"]; then
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $white; figlet "  Vikaru-Md"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo
    echo -e $yellow " • [/] Installing Bot...."|pv -qL 30
    echo -e $white " "
    git clone https://github.com/Maxz-09/base-vikaru-md
    sleep 1
    echo
    echo -e $yellow " • [/] Installing module...."|pv -qL 30
    echo -e $white " "
    cd /storage/emulated/0/.vikaru-bot/base-vikaru-md
    yarn install -y
    echo
    echo -e $green " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    menu
    elif [$pil == "4"]; then
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $white; figlet "  Start-Md"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo
    echo -e $green " • [/] Start bot...."|pv -qL 30
    sleep 1
    echo -e $white
    cd base-vikaru-md
    npm start
    elif [$pil == "5"]; then
    echo
    echo -e $yellow " # [/] Update..."|pv -qL 30
    echo -e $white "-----------------------------"
    echo -e $green " • [/] Vikaru-Menu :"
    echo -e $white " "
    cd /storage/emulated/0/.vikaru-bot/
    git config --global --add safe.directory /storage/emulated/0/.vikaru-bot/
    git pull
    echo
    echo -e $green " • [/] Ar-Vikaru-Bot :"
    echo -e $white
    cd /storage/emulated/0/.vikaru-bot/ar-vikaru-bot
    git config --global --add safe.directory /storage/emulated/0/.vikaru-bot/ar-vikaru-bot/
    git pull
    echo -e $white "-----------------------------"
    sleep 1
    echo -e $green " # [✓]  Succssesfully"|pv -qL 30
    sleep 3
    exit
    elif [$pil == "6"]; then
    echo -e $green" # [✓] Exit"
    exit 1
    else
        echo -e $red" # [!] Input denied"|pv -qL 30
    sleep 1
    menu
    fi
}

# Function to request a new password
set_password() {
    clear
    echo -e -n $white; figlet "  Sign up"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    echo
    echo -e $white "=-----------------------------"
    echo -e $yellow " # [!] Please create your password...."
    echo -e $white "=-----------------------------"
    sleep 1
    read -p $'  • [?] Enter Password   : ' new_password
    read -s -p $'  • [?] Confirm password : ' confirm_password
    echo
    echo -e $white "-----------------------------"
    sleep 1

    if ["$new_password" != "$confirm_password"]; then
    echo -e $red " # [x] password not found, try again..."|pv -qL 30
    sleep 2
    set_password
    else
        echo "$new_password" > "$PASSWORD_FILE"
    echo -e $green " # [✓] Password successfully set."|pv -qL 30
    sleep 1
    echo
    echo -e $yellow " # [!] Start this cmd :" $white "bash vikaru.sh"|pv -qL 30
    echo -e $white " "
    fi
}

# Function to check password
check_password() {
    clear
    echo -e -n $white; figlet "  Login"
    echo -e $white "-----------------------------"
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    echo
    sleep 1
    echo -e $white " # [!] Please login to continue...."|pv -qL 30
    sleep 1
    read -s -p $'  • [?] Enter password : ' entered_password
    echo
    echo -e $white "-----------------------------"
    sleep 1

    stored_password = $( < "$PASSWORD_FILE")

    if ["$entered_password" == "$stored_password"]; then
    echo -e $green " # [✓] Login successfully"|pv -qL 30
    sleep 2
    enter
    else
        echo -e $red " # [x] Password not found, try again....."|pv -qL 30
    sleep 2
    echo -e $white " "
    check_password
    fi
}

# Check if the password is set
if [! -f "$PASSWORD_FILE"]; then
set_password
else
    check_password
fi