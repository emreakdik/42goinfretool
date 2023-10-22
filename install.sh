
install_dir="$HOME/goinfre/apps"

#if there is 42goinfreetool folder at the same place, delete it
if [ ls | grep -q "42goinfreetool" ]; then
    rm -rf 42goinfreetool
fi

# check if there .src 
if [ -d ~/.src ]; then
    rm -rf ~/.src
else
    mkdir -p ~/.src
fi

mkdir -p ~/.src
cp src/* ~/.src
cp -r .git ~/.src

# check if there is alias 
if [ -f ~/.zshrc ]; then
    if ! grep -q "alias download='bash ~/.src/download.sh'" ~/.zshrc; then
        echo "alias download='bash ~/.src/download.sh'" >> ~/.zshrc
    fi
fi

if [ -f ~/.bashrc ]; then
    if ! grep -q "alias download='bash ~/.src/download.sh'" ~/.bashrc; then
        echo "alias download='bash ~/.src/download.sh'" >> ~/.bashrc
    fi
fi

if [ -f ~/.zshrc ]; then
    if ! grep -q "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" ~/.zshrc; then
        echo "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" >> ~/.zshrc
    fi
fi

if [ -f ~/.bashrc ]; then
    if ! grep -q "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" ~/.bashrc; then
        echo "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" >> ~/.bashrc
    fi
fi

if [ -f ~/.zshrc ]; then
    if ! grep -q "alias update='bash ~/.src/update.sh'" ~/.zshrc; then
        echo "alias update='bash ~/.src/update.sh'" >> ~/.zshrc
    fi
fi

if [ -f ~/.bashrc ]; then
    if ! grep -q "alias update='bash ~/.src/update.sh'" ~/.bashrc; then
        echo "alias update='bash ~/.src/update.sh'" >> ~/.bashrc
    fi
fi

source ~/.zshrc