#!/bin/bash

# DELETING THE WATERMARK IS FORBIDDEN, RESPECT THE DEVELOPER

# -  Script by   : Maxtream_09
# -  Github.     : https://github.com/Maxz-09
# -  Sosmed    : https://linktr.ee/Maxtream_09


# Color definitions (optional, comment out if not needed)
white="\033[00m"
red="\033[31m"
green="\033[32m"
yellow="\033[33m"


# Confirm resource check 
enter() {
    clear
    echo
    echo -e $white " # [!] Checking system file. make sure your internet is Good!"
    read -r -s -p $'  • [?] Press enter to continue....\n'
    function back_option () {
        clear 
    }
    
# Install required resources
    echo
    echo -e $white "=------------------------------="
    echo -e $yellow " # [!] Detect resource..."
    echo -e $white "=------------------------------="
    sleep 1
    check_resource "figlet"
    check_resource "pv"
    check_resource "git"
    check_resource "bash"
    check_resource "nodejs-lts"
    check_resource "libwebp"
    check_resource "ffmpeg"
    echo -e $white "=------------------------------="
    sleep 1
    echo -e $green " # [✓] All resources installed!"|pv -qL 35
    sleep 2
    menu
}



# Function to check resource installation
check_resource() {
  package_name="$1"
  dpkg -s $package_name &> /dev/null
  if [ $? -eq 0 ]; then
    echo -e $green " • [✓] $package_name installed"
    else
    echo -e $yellow " • [/] Installing $package_name..."
    echo
    pkg install "$package_name" -y
    echo
    echo -e $green " • [✓] $package_name installed"
    echo
  fi
}

# Main menu function (can be further simplified)
menu() {
    clear
    echo -e -n $white;figlet "Vikaru-Menu"
    echo -e $white "=------------------------------="
    echo -e "  # Select an options [ 1-3 ] :"
    echo -e $white "=------------------------------="
    echo -e " [1] Install Script"
    echo -e " [2] Update Script"
    echo -e " [3] Create bot directory ( one-time )"
    echo -e " [0] Exit"
    echo
    read -p " # Select > " choice
    
    case "$choice" in
    1)
      # Install All script
      install
      ;;
      2)
      # Update All script
      update
      ;;
    3)
      # Create bot directory
      clear
      echo -e -n $white;figlet "  Mkdir"
      echo -e $white "=----------------------------------="
      echo -e "  Author : Maxtream_09"
      echo -e "  GitHub : Maxz-09"
      sleep 1
      echo
      mkdir /storage/emulated/0/.vikaru-bot
      mv vikaru.sh /storage/emulated/0/.vikaru-bot
      mv .git /storage/emulated/0/.vikaru-bot
      echo "echo 'Start : cd /storage/emulated/0/.vikaru-bot && bash vikaru.sh'" > "vikaru.sh"
      echo -e $white "=----------------------------------="
      echo -e $green " # [✓] mkdir /storage/emulated/0/.vikaru-bot"|pv -qL 30
      sleep 1
      echo -e $green " # [✓] mv vikaru.sh"|pv -qL 30
      echo -e $white "=----------------------------------="
      sleep 2
      echo -e $yellow " # [!] Start this cmd :"
      echo -e $white " "
      echo -e $white " cd /storage/emulated/0/.vikaru-bot && bash vikaru.sh"|pv -qL 30
      exit
      ;;
    0)
      exit 0
      ;;
    *)
      echo
      echo -e $red" # [!] Input denied"|pv -qL 30
      sleep 1
      menu
      ;;
  esac
}


# Vikaru-Install
install() {
    clear
    echo -e -n $white;figlet "Vikaru-Install"
    echo -e $white "=------------------------------="
    echo -e "  # Select an options [ 1-3 ] :"
    echo -e $white "=------------------------------="
    echo -e " [1] Ar-Vikaru-Bot"
    echo -e " [2] Base-Vikaru-Md"
    echo -e " [3] Base-Vikaru-Md_demo"
    echo -e " [0] Back"
    echo
    maininstall
    }

# Main install   
maininstall() {
    echo -e -n " # Select > ";read pil
    echo
if [ $pil == "1" ];then
    # Install Ar-Vikaru-Bot
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $white;figlet "  Vikaru-Bot"
    echo -e $white "=----------------------------------="
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
    install
elif [ $pil == "2" ];then
    # Install Base-Vikaru-Md
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $white;figlet "  Vikaru-Md"
    echo -e $white "=----------------------------------="
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo 
    echo -e $yellow " • [/] Installing Bot...."|pv -qL 30
    echo -e $white " " 
    git clone https://github.com/Maxz-09/base-vikaru-md
    sleep 1
    echo 
    echo -e $green " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    install
elif [ $pil == "3" ];then
    # Install Base-Vikaru-Md_demo
    clear
    cd /storage/emulated/0/.vikaru-bot
    echo -e -n $white;figlet "  Vikaru-Md_demo"
    echo -e $white "=----------------------------------="
    echo -e "  Author : Maxtream_09"
    echo -e "  GitHub : Maxz-09"
    sleep 1
    echo 
    echo -e $yellow " • [/] Installing Bot...."|pv -qL 30
    echo -e $white " " 
    git clone https://github.com/Maxz-09/base-vikaru-md_demo
    sleep 1
    echo 
    echo -e $green " # [✓] Succssesfully"|pv -qL 30
    sleep 2
    install
elif [ $pil == "0" ];then
    clear
    echo -e $green" # [✓] Back"
    menu
else
    echo -e $red" # [!] Input denied"|pv -qL 30
    sleep 1
    install
fi
}



# Vikaru-Update
update() {
    clear
    echo -e -n $white;figlet "Vikaru-Update"
    echo -e $white "=------------------------------="
    echo -e "  # Select an options [ 1-4 ] :"
    echo -e $white "=------------------------------="
    echo -e " [1] Vikaru.sh"
    echo -e " [2] Ar-Vikaru-Bot"
    echo -e " [3] Base-Vikaru-Md"
    echo -e " [4] Base-Vikaru-Md_demo"
    echo -e " [0] Back"
    echo
    mainupdate
}

# Main update   
mainupdate() {
    echo -e -n " # Select > ";read pil
    echo
if [ $pil == "1" ];then
    # Update vikaru.sh
    echo -e $yellow " # [/] Update..."|pv -qL 30
    echo -e $white "=----------------------------------="
    echo -e $green " • [/] Vikaru-Menu :"
    echo -e $white " "
    cd /storage/emulated/0/.vikaru-bot/
    git config --global --add safe.directory /storage/emulated/0/.vikaru-bot/
    git pull
    echo -e $white "=----------------------------------="
    sleep 1
    echo -e $green " # [✓]  Succssesfully"|pv -qL 30
    sleep 2
    update
elif [ $pil == "2" ];then
    # Update Ar-Vikaru-Bot
    echo -e $yellow " # [/] Update..."|pv -qL 30
    echo -e $white "=----------------------------------="
    echo -e $green " • [/] Ar-Vikaru-Bot :"
    echo -e $white
    cd /storage/emulated/0/.vikaru-bot/ar-vikaru-bot
    git config --global --add safe.directory /storage/emulated/0/.vikaru-bot/ar-vikaru-bot/
    git pull
    echo -e $white "=----------------------------------="
    sleep 1
    echo -e $green " # [✓]  Succssesfully"|pv -qL 30
    sleep 2
    update
elif [ $pil == "3" ];then
    # Update Base-Vikaru-Md
    echo -e $yellow " # [/] Update..."|pv -qL 30
    echo -e $white "=----------------------------------="
    echo -e $green " • [/] Ar-Vikaru-Md :"
    echo -e $white
    cd /storage/emulated/0/.vikaru-bot/base-vikaru-md
    git config --global --add safe.directory /storage/emulated/0/.vikaru-bot/base-vikaru-md/
    git pull
    echo -e $white "=----------------------------------="
    sleep 1
    echo -e $green " # [✓]  Succssesfully"|pv -qL 30
    sleep 2
    update
elif [ $pil == "4" ];then
    # Update Base-Vikaru-Md_demo
    echo -e $yellow " # [/] Update..."|pv -qL 30
    echo -e $white "=----------------------------------="
    echo -e $green " • [/] Ar-Vikaru-Md_demo :"
    echo -e $white
    cd /storage/emulated/0/.vikaru-bot/base-vikaru-md_demo
    git config --global --add safe.directory /storage/emulated/0/.vikaru-bot/base-vikaru-md_demo/
    git pull
    echo -e $white "=----------------------------------="
    sleep 1
    echo -e $green " # [✓]  Succssesfully"|pv -qL 30
    sleep 2
    update
elif [ $pil == "0" ];then
    clear
    echo -e $green" # [✓] Back"
    menu
else
    echo -e $red" # [!] Input denied"|pv -qL 30
    sleep 1
    update
fi
}

# Call the main menu function
enter
