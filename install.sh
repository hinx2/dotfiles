#!/bin/bash
# linux rice install script

# Get pkmg
declare -A osInfo;
osInfo[/etc/readhat-release]=yum
osInfo[/etc/arch-release]=pacman
osInfo[/etc/debian_version]=apt-get
osInfo[/etc/gentoo-release]=emerge
osInfo[/etc/SuSE-release]=zypp

for distro in ${!osInfo[@]}
do
  if [[ -f $distro ]]; then
    echo Package manager: ${osInfo[$distro]}
    if [[ ${osInfo[$distro]} = pacman ]]; then
      sudo ${osInfo[$distro]} -Syu
      #yes | sudo pacman -S neofetch btop speedtest-cli neovim glances 
    fi
  fi
done


# echo "Moving neofetch config to ~/.config/neofetch"
# cp -R ./neofetch ~/.config
# if [ $? -eq 0 ]; then   
#   echo "neofetch config moved succesfuly"
# else
#   echo "Neofetch config move unsuccesfully"
# fi
