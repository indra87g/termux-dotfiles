#!/bin/bash

figlet Dotfiles
echo "Starting Backup at $(date '+%Y-%m-%d %H:%M:%S')"

cp ~/.zshrc ~/dotfiles
cp ~/.npmrc ~/dotfiles
cp ~/.gitconfig ~/dotfiles
cp ~/.config/micro/* ~/dotfiles/.config/micro/
cp ~/.config/code-server/* ~/dotfiles/.config/code-server/
cp ~/.config/mc/* ~/dotfiles/.config/mc/
mkdir ~/dotfiles/.gyp
cp ~/.gyp/include.gypi ~/dotfiles/.gyp/include.gypi
cp ~/backup-dotfiles.sh ~/dotfiles
cd ~/dotfiles

read -p "Do you want to commit the changes? (yes/no): " should_commit

if [ "$should_commit" = "yes" ]; then
    git add *
    commit_message="Dotfiles backup on $(date '+%Y-%m-%d %H:%M:%S')"
    git commit -m "$commit_message"
    git status
    echo "Changes have been committed."
else
    echo "No changes were committed."
fi

echo Backup Complete
