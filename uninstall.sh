#!/bin/bash

# remove Tmux Pro Config
rm -r  ~/.tmux.conf

# restore Backup from tmux config
mv ~/.tmux.conf.backup ~/.tmux.conf

# reload Tmux Conf
$ tmux source ~/.tmux.conf
