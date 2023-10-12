#!/bin/bash

firefox_url="https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=en-US"

download_dir="$HOME/goinfre"

firefox_dmg="Firefox.dmg"

firefox_dmg_path="$download_dir/$firefox_dmg"

firefox_app="Firefox.app"

curl -L -o "$firefox_dmg_path" "$firefox_url"

if [ -e "$firefox_dmg_path" ]; then
    hdiutil attach "$firefox_dmg_path"
    cp -R "/Volumes/Firefox/Firefox.app" "$download_dir"
    hdiutil detach "/Volumes/Firefox"
    
    rm "$firefox_dmg_path"
    
    clear
    echo "Firefox başarıyla kuruldu"
else
    echo "Firefox DMG dosyası indirilemedi veya hedef dizine taşınamadı."
fi
