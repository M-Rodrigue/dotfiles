#!/bin/bash
clear
# This script is used to manage all the settings of any tools on the computer
while [true]; do

  # Show the menu of the script
  echo "-------- Dotfiles.sh by MRod --------"
  echo ""
  echo "0. Exit"
  echo "1. Export settings"
  echo "2. VSCode"
  echo "3. ZSH"
  echo ""
  echo "Select a number in 0 and 3"
  echo "-------------------------------------"
  read -r number

  # Exit the script
  if [ "$number" = "0" ]; then
    clear
    exit
  fi

  # Export settings of all tools
  if [ "$number" = "1" ]; then
    clear
    echo "Creation of the directory containing every settings"
    mkdir ~/DotfilesBackup
    echo "Copying all settings of VSCode"
    mkdir -p ~/DotfilesBackup/VSCode/extensions && cp -R ~/.vscode/extensions ~/DotfilesBackup/VSCode/extensions
    cp ~/Library/Application Support/Code/User/settings.json ~/DotfilesBackup/VSCode
    echo "Copying the .ssh directory"
    mkdir ~/DotfilesBackup/SSH && cp -R ~/.ssh ~/DotfilesBackup/SSH
    echo "Your archive is located on your personnal folder (~/DotfilesBackup)"
    sleep 5
    exit
  fi

  while [ "$number" = "1" ]; do
    clear
    echo "---------------- Dotfiles.sh : VSCode ---------------"
    echo ""
    echo "0. Exit"
    echo "1. Update the settings"
    echo "2. Install the theme "Shades of Purple""
    echo "3. Install the icons "Material Icon Theme""
    echo "4. Install the font "Fira Code""
    echo "5. Install the extensions"
    echo ""
    echo "Select a number in 0 and 5"
    echo "-----------------------------------------------------"
    read -r number_vscode

    # Exit the vscode menu
    if [ "number_vscode" = "0" ]; then
      clear
      number=""
    fi

  done

  while [ "$number" = "2" ]; do
    clear
    echo "---------------- Dotfiles.sh : ZSH ---------------"
    echo ""
    echo "0. Exit"
    echo "1. Update the settings"
    echo ""
    echo "Select a number in 0 and 1"
    echo "--------------------------------------------------"
    read -r number_zsh

    # Exit the zsh menu
    if [ "$number_zsh" = "0" ]; then
      clear
      number=""
    fi

  done
done