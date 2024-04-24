#!/bin/bash

if [ -d "$HOME/Documents/" ]; then

    echo "English..."
    cd $HOME/Documents/.arch/
    git pull
    cd
    rm -r $HOME/Documents/.arch/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documents/.arch/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documents/.arch/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documents/.arch/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documents/.arch/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documents/.arch/apps/
    #
    # Hyprland
    cp -rf $HOME/.config/hypr/ $HOME/Documents/.arch/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documents/.arch/apps/
    #
    # Swaylock
    cp -rf $HOME/.config/swaylock $HOME/Documents/.arch/apps/
    #
    # Cava
    cp -rf $HOME/.config/cava $HOME/Documents/.arch/apps/
    # 
    # Wallpaper
    cp $HOME/.wallpaper.* $HOME/Documents/.arch/wallpapers

    cd $HOME/Documents/.arch/
    git add -A
    git commit -m "$1"
    git push

elif [ -d "$HOME/Documentos/" ]; then
    echo "Spanish..."

    cd $HOME/Documentos/.arch/
    git pull
    cd
    rm -r $HOME/Documentos/.arch/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documentos/.arch/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documentos/.arch/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documentos/.arch/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documentos/.arch/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documentos/.arch/apps/
    #
    # Hyprland
    cp -rf $HOME/.config/hypr/ $HOME/Documentos/.arch/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documentos/.arch/apps/
    #
    # Swaylock
    cp -rf $HOME/.config/swaylock $HOME/Documentos/.arch/apps/
    #
    # Cava
    cp -rf $HOME/.config/cava $HOME/Documentos/.arch/apps/
    #
    # Wallpaper
    cp $HOME/.wallpaper.* $HOME/Documentos/.arch/wallpapers

    cd $HOME/Documentos/.arch/
    git add -A
    git commit -m "$1"
    git push

else 
    echo "No english or spanish detected..."

fi
