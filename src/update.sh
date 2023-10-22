#!bin/bash

script_dir="$HOME/.src"

update(){
    cd $script_dir
    git pull
    source ~/.zshrc
    clear
    echo "Program başarıyla güncellendi"
}

update