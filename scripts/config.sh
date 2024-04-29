#!/bin/bash

res=$1

if [[ "$res" = 1080 || "$res" = 768 ]] ; then
    if [ -d "$HOME/Documents/" ]; then

        echo "English..."
        cd $HOME/Documents/.arch/
        git pull
        cd
        mkdir -p $HOME/.config
        mkdir -p $HOME/.wallpaper

        cp -rf $HOME/Documents/.arch/apps/* $HOME/.config/
        cp -f $HOME/Documents/.arch/apps/.bashrc $HOME/
        cp -f $HOME/Documents/.arch/wallpapers/.wallpaper.* $HOME/
        cp -f $HOME/Documents/.arch/wallpapers/.lockpaper.* $HOME/

        sh $HOME/Documents/.arch/scripts/resolution $res

    elif [ -d "$HOME/Documentos/" ]; then
        echo "Spanish..."

        cd $HOME/Documentos/.arch/
        git pull
        cd
        mkdir -p $HOME/.config
        mkdir -p $HOME/.wallpaper

        cp -rf $HOME/Documentos/.arch/apps/* $HOME/.config/
        cp -f $HOME/Documentos/.arch/apps/.bashrc $HOME/
        cp -f $HOME/Documentos/.arch/wallpapers/.wallpaper.* $HOME/
        cp -f $HOME/Documentos/.arch/wallpapers/.lockpaper.* $HOME/

        sh $HOME/Documentos/.arch/scripts/resolution $res

    else 
        echo "No english or spanish detected..."

    fi
else
    echo "Don't forget to add resolution, 1080 or 768 are available rn..."
    exit
fi
