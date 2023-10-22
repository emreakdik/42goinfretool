
install_dir="$HOME/goinfre/apps"

mkdir -p ~/.src
cp src/* ~/.src
cp .git ~/.src

echo "alias download='bash ~/.src/download.sh'" >> ~/.zshrc
echo "alias download='bash ~/.src/download.sh'" >> ~/.bashrc

echo "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" >> ~/.zshrc
echo "alias chrome='bash $install_dir/chrome/launch_chrome.sh'" >> ~/.bashrc
echo "alias update download='bash ~/.src/update.sh'" >> ~/.zshrc
echo "alias update download='bash ~/.src/update.sh'" >> ~/.bashrc
source ~/.zshrc