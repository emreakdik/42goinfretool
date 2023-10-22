#!/bin/bash

source $HOME/.src/packages.sh

install_dir="$HOME/goinfre/apps"
mkdir -p "$install_dir"

browsers=("chrome" "firefox" "help")
utilities=("vscode" "slack" "spotify")

if [ "$1" == "" ]; then
    echo "Hatali Girdi."
    exit 0
fi

install_app() {
    local app_name="$1"
    echo "İndirme ve kurma işlemi: $app_name"

    if [ "$app_name" == "firefox" ]; then
        install_firefox
    elif [ "$app_name" == "chrome" ]; then
        install_chrome
    elif [ "$app_name" == "vscode" ]; then
        install_vscode
    elif [ "$app_name" == "slack" ]; then
        install_slack
    elif [ "$app_name" == "spotify" ]; then
        install_spotify
    elif [ "$app_name" == "emre" ]; then
        install_emre
    elif [ "$app_name" == "help" ]; then
        clear
        bash $HOME/.src/help.sh
        exit 0
    else
        echo "Hatali girdi."
    fi
}

app="$1"

if [[ " ${browsers[@]} " =~ "$app" ]]; then
    install_app "$app"
elif [[ " ${utilities[@]} " =~ " $app " ]]; then
    install_app "$app"
fi

exit 0
