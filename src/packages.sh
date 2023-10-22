#!/bin/bash

install_dir="$HOME/goinfre/apps"

mkdir -p "$install_dir"

install_firefox(){

    firefox_url="https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=en-US"
    firefox_dmg="Firefox.dmg"
    firefox_dmg_path="$install_dir/$firefox_dmg"
    firefox_app="Firefox.app"

    curl -L -o "$firefox_dmg_path" "$firefox_url"

    if [ -e "$firefox_dmg_path" ]; then
        hdiutil attach "$firefox_dmg_path"
        cp -R "/Volumes/Firefox/Firefox.app" "$install_dir"
        mv "$install_dir/$firefox_app" "$install_dir/firefox-42.app"
        hdiutil detach "/Volumes/Firefox"
        rm "$firefox_dmg_path"
        ln -s "$install_dir/firefox-42.app" "$HOME/Desktop/firefox-42"
        clear
        echo "Firefox başarıyla kuruldu"
    else
        clear
        echo "Firefox DMG dosyası indirilemedi veya hedef dizine taşınamadı."
    fi
}

install_vscode(){

    curl -o vscode.zip -L "https://az764295.vo.msecnd.net/stable/abd2f3db4bdb28f9e95536dfa84d8479f1eb312d/VSCode-darwin.zip"

    unzip vscode.zip -d "$install_dir"

    cd "$install_dir"

    rm vscode.zip
    
    ln -s "$install_dir/Visual Studio Code.app" "$HOME/Desktop/vscode"

    clear
    echo "VSCode başarıyla kuruldu"
}

install_slack(){

    slack_url="https://downloads.slack-edge.com/releases/macos/4.29.149/prod/universal/Slack-4.29.149-macOS.dmg"
    slack_dmg="Slack.dmg"
    slack_dmg_path="$install_dir/$slack_dmg"
    slack_app="Slack.app"

    curl --retry 3 -L "$slack_url" -o "$slack_dmg_path"

    if [ -e "$slack_dmg_path" ]; then
        hdiutil attach "$slack_dmg_path"
        cp -R "/Volumes/Slack/$slack_app" "$install_dir"
        hdiutil detach "/Volumes/Slack"
        rm "$slack_zip_path"
        mv "$install_dir/$slack_app" "$install_dir/slack.app"
        ln -s "$install_dir/slack.app" "$HOME/Desktop/slack"
        # clear
        echo "Slack başarıyla kuruldu"
    else
        clear
        echo "Slack DMG dosyası indirilemedi veya hedef dizine taşınamadı."
    fi
}

install_chrome(){

    chrome_url="https://dl.google.com/chrome/mac/universal/stable/CHFA/googlechrome.dmg"
    chrome_dmg="googlechrome.dmg"
    chrome_dmg_path="$install_dir/$chrome_dmg"
    chrome_app="Google Chrome.app"

    curl -L -o "$chrome_dmg_path" "$chrome_url"

    if [ -e "$chrome_dmg_path" ]; then
        hdiutil attach "$chrome_dmg_path"
        cp -R "/Volumes/Google Chrome/$chrome_app" "$install_dir"
        if [ -e "$install_dir/chrome" ]; then
            rm -rf "$install_dir/chrome"
        fi
        mkdir -p "$install_dir/chrome"
        mv "$install_dir/$chrome_app" "$install_dir/chrome/chrome-42.app"
        hdiutil detach "/Volumes/Google Chrome"
        rm "$chrome_dmg_path"
        chmod +x launch_chrome.sh
        cp $HOME/.src/launch_chrome.sh "$install_dir/chrome"
        touch ~/.zshrc
        source ~/.zshrc
        clear
        echo "Google Chrome başarıyla kuruldu"
    else
        clear
        echo "Google Chrome DMG dosyası indirilemedi veya hedef dizine taşınamadı."
    fi
}

install_spotify(){
    
        spotify_url="https://download.scdn.co/Spotify.dmg"
        spotify_dmg="Spotify.dmg"
        spotify_dmg_path="$install_dir/$spotify_dmg"
        spotify_app="Spotify.app"
    
        curl -L -o "$spotify_dmg_path" "$spotify_url"
    
        if [ -e "$spotify_dmg_path" ]; then
            hdiutil attach "$spotify_dmg_path"
            cp -R "/Volumes/Spotify/$spotify_app" "$install_dir"
            mv "$install_dir/$spotify_app" "$install_dir/spotify.app"
            hdiutil detach "/Volumes/Spotify"
            rm "$spotify_dmg_path"
            ln -s "$install_dir/spotify.app" "$HOME/Desktop/spotify"
            clear
            echo "Spotify başarıyla kuruldu"
        else
            clear
            echo "Spotify DMG dosyası indirilemedi veya hedef dizine taşınamadı."
        fi
}

install_emre(){

    install_chrome
    install_vscode
    install_slack
    install_spotify
}
