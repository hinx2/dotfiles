#!/bin/bash
# linux rice install script

yes | sudo pacman -S neofetch
echo "Moving neofetch config to ~/.config/neofetch"
cp -R ./neofetch ~/.config
if [ $? -eq 0 ]; then   
  echo "neofetch config moved succesfuly"
else
  echo "Neofetch config move unsuccesfully"
fi
