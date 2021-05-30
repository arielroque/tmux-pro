#!/bin/bash

# install latest version from Tmux Plugin Manager (TMP)
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# create Backup from tmux config previous used
mv ~/.tmux.conf ~/.tmux.conf.backup

# use Tmux Pro Conf
cp ./tmux.conf ~/.tmux.conf

# reload Tmux Conf
$ tmux source ~/.tmux.conf
