#!/bin/bash

is_tmux_installed=$(which tmux)

if [ ! -z $is_tmux_installed ];then 
    # remove Tmux Pro Config
    rm -r  ~/.tmux.conf

    # restore Backup from tmux config
    mv ~/.tmux.conf.backup ~/.tmux.conf

    # reload Tmux Conf
    tmux source ~/.tmux.conf

    # kill server
    tmux kill-server

    echo -e "\e[32m--> Uninstall completed successfully \e[0m"
    echo -e "\e[0m    Close the terminal to apply the changes"
    echo ""

else
    echo -e "\e[31m--> Install Tmux (>= 3.0) before use Tmux-pro\e[0m"
    echo ""

fi
