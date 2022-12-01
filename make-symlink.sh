#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

# dotfiles directory
dir=~/dotfiles

# old dotfiles backup directory
olddir=~/old-dotfiles

# list of files/folders to symlink in homedir
# files="~/.vimrc"

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# # move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
# for file in $files; do
#     echo "Moving any existing dotfiles from ~ to $olddir"
#     cp $file $olddir
# done

echo "Creating symlinks..."

ln -s "${HOME}/.vimrc" "${HOME}/dotfiles/.vimrc"
ln -s "${HOME}/.tmux.conf" "${HOME}/dotfiles/.tmux.conf"
ln -s "${HOME}/.config/alacritty" "${HOME}/dotfiles/.config/alacritty"
ln -s "${HOME}/.config/fish" "${HOME}/dotfiles/.config/fish"
ln -s "${HOME}/.config/nvim" "${HOME}/dotfiles/.config/nvim"

echo "Symlinks done"
