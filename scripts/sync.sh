#!/bin/bash

if [ -d "$HOME/Documents/" ]; then

    echo "English..."
    cd $HOME/Documents/.files/
    git pull
    cd
    rm -r $HOME/Documents/.files/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documents/.files/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documents/.files/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documents/.files/apps/
    #
    # Fish
    cp -rf $HOME/.config/fish/ $HOME/Documents/.files/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documents/.files/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documents/.files/apps/
    #
    # Hyprland
    cp -rf $HOME/.config/hypr/ $HOME/Documents/.files/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documents/.files/apps/
    #

    cd $HOME/Documents/.files/
    git add -A
    git commit -m "$1"
    git push

elif [ -d "$HOME/Documentos/" ]; then
    echo "Spanish..."

    cd $HOME/Documentos/.files/
    git pull
    cd
    rm -r $HOME/Documentos/.files/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documentos/.files/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documentos/.files/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documentos/.files/apps/
    #
    # Fish
    cp -rf $HOME/.config/fish/ $HOME/Documentos/.files/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documentos/.files/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documentos/.files/apps/
    #
    # Hyprland
    cp -rf $HOME/.config/hypr/ $HOME/Documents/.files/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documentos/.files/apps/
    #

    cd $HOME/Documentos/.files/
    git add -A
    git commit -m "$1"
    git push

else 
    echo "No english or spanish detected..."

fi
