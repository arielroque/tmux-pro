#!/bin/bash

is_tmux_installed=$(which tmux)

if [ ! -z $is_tmux_installed ];then

    #create tmux.conf
    tmux source-file ~/.tmux.conf

    # install latest version from Tmux Plugin Manager (TMP)
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

    # create Backup from tmux config previous used
    mv ~/.tmux.conf ~/.tmux.conf.backup

    # use Tmux Pro Conf
    cp ./tmux.conf ~/.tmux.conf

    # reload Tmux Conf
    tmux source ~/.tmux.conf

    echo -e "\e[32m--> Install completed successfully \e[0m"
    echo -e "\e[0m    Close the terminal to apply the changes"
    echo ""

else
    echo -e "\e[31m--> Install Tmux (>= 3.0) before use Tmux-pro\e[0m"
    echo ""
fi

