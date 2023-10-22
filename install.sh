
install_dir="$HOME/goinfre/apps"

mkdir -p ~/.src
cp src/* ~/.src
cp -r .git ~/.src

# check if there is alias 
if [ -f ~/.zshrc ]; then
    if grep -q "alias download='bash ~/.src/download.sh'" ~/.zshrc; then
        echo "alias download already exist"
    else
        echo "alias download='bash ~/.src/download.sh'" >> ~/.zshrc
    fi
fi

if [ -f ~/.bashrc ]; then
    if grep -q "alias download='bash ~/.src/download.sh'" ~/.bashrc; then
        echo "alias download already exist"
    else
        echo "alias download='bash ~/.src/download.sh'" >> ~/.bashrc
    fi
fi

if [ -f ~/.zshrc ]; then
    if grep -q "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" ~/.zshrc; then
        echo "alias chrome already exist"
    else
        echo "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" >> ~/.zshrc
    fi
fi

if [ -f ~/.bashrc ]; then
    if grep -q "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" ~/.bashrc; then
        echo "alias chrome already exist"
    else
        echo "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" >> ~/.bashrc
    fi
fi

if [ -f ~/.zshrc ]; then
    if grep -q "alias update='bash ~/.src/update.sh'" ~/.zshrc; then
        echo "alias update already exist"
    else
        echo "alias update='bash ~/.src/update.sh'" >> ~/.zshrc
    fi
fi

if [ -f ~/.bashrc ]; then
    if grep -q "alias update='bash ~/.src/update.sh'" ~/.bashrc; then
        echo "alias update already exist"
    else
        echo "alias update='bash ~/.src/update.sh'" >> ~/.bashrc
    fi
fi

source ~/.zshrc