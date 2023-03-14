#!/bin/bash
# Tools for managing the dotfiles

echo "This script is used to manage the dotfiles of the device (only compatible with MacOS)"
echo "You can save your dotfiles into a archive, replace your old configuration by the new or pull the repository (git is necessary to pull the repository)"
echo -n "1 = Save | 2 = Replace | 3 = Pull"
read number

if [ "$number" = "1" ]
then
  echo "Creating a dotfiles archive on the desktop"
  mkdir ~/Desktop/dotfiles
  echo "Copying all the configuration of VSCode"
  cp -R ~/.vscode/extensions ~/Desktop/dotfiles/VSCode/extensions
  cp ~/Library/Application Support/Code/User/settings.json ~/Desktop/dotfiles/VSCode
  echo "Copying the .ssh directory"
  cp -R ~/.ssh ~/Desktop/dotfiles/SSH
  tar cf dotfiles.tar ~/Desktop/dotfiles
  rm -rf ~/Desktop/dotfiles
  echo "Your archive is on the desktop (~/Desktop/dotfiles.tar)"
elif [ "$number" = "2" ]

then
elif [ "$number" = "3" ]
then
  echo "Pull the repository"
  git pull
else
  echo "Invalid number"
fi