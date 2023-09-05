#!/bin/bash

if [ -d "$HOME/Documents/" ]; then

    echo "English..."
    cd $HOME/Documents/.files/
    git pull
    cd
    mkdir -p $HOME/.config
    mkdir -p $HOME/.wallpapers

    cp -rf $HOME/Documents/.files/apps/* $HOME/.config/
    cp -f $HOME/Documents/.files/apps/.bashrc $HOME/
    cp -rf $HOME/Documents/.files/wallpapers/* $HOME/.wallpapers/

    read -p "RESOLUTION (1080 or 768): " res
    sh $HOME/Documents/.files/scripts/resolution $res

elif [ -d "$HOME/Documentos/" ]; then
    echo "Spanish..."

    cd $HOME/Documentos/.files/
    git pull
    cd
    mkdir -p $HOME/.config
    mkdir -p $HOME/.wallpapers

    cp -rf $HOME/Documentos/.files/apps/* $HOME/.config/
    cp -f $HOME/Documentos/.files/apps/.bashrc $HOME/
    cp -rf $HOME/Documentos/.files/wallpapers/* $HOME/.wallpapers/

    read -p "RESOLUTION (1080 or 768): " res
    sh $HOME/Documentos/.files/scripts/resolution $res

else 
    echo "No english or spanish detected..."

fi
