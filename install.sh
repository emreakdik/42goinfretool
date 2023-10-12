
install_dir="$HOME/goinfre/apps"

mkdir -p ~/.src
cp src/* ~/.src

echo "alias download='bash ~/.src/download.sh'" >> ~/.zshrc
echo "alias download='bash ~/.src/download.sh'" >> ~/.bashrc

echo "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" >> ~/.zshrc
echo "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" >> ~/.bashrc
source ~/.zshrc