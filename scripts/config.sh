#!/bin/bash

if [ -d "$HOME/Documents/" ]; then

    echo "English..."
    cd $HOME/Documents/.arch/
    git pull
    cd
    mkdir -p $HOME/.config
    mkdir -p $HOME/.wallpapers

    cp -rf $HOME/Documents/.arch/apps/* $HOME/.config/
    cp -f $HOME/Documents/.arch/apps/.bashrc $HOME/
    cp -rf $HOME/Documents/.arch/wallpapers/* $HOME/.wallpapers/

    read -p "RESOLUTION (1080 or 768): " res
    sh $HOME/Documents/.arch/scripts/resolution $res

elif [ -d "$HOME/Documentos/" ]; then
    echo "Spanish..."

    cd $HOME/Documentos/.arch/
    git pull
    cd
    mkdir -p $HOME/.config
    mkdir -p $HOME/.wallpapers

    cp -rf $HOME/Documentos/.arch/apps/* $HOME/.config/
    cp -f $HOME/Documentos/.arch/apps/.bashrc $HOME/
    cp -rf $HOME/Documentos/.arch/wallpapers/* $HOME/.wallpapers/

    read -p "RESOLUTION (1080 or 768): " res
    sh $HOME/Documentos/.arch/scripts/resolution $res

else 
    echo "No english or spanish detected..."

fi
