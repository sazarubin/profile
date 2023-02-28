echo "Enter git global user name: "
read name
git config --global user.name $name
echo "Enter git global user email (it also will be used for ssh-keygen):"
read email
git config --global user.email $email
cp profile/.globalgitignore ~/.gitignore
git config --global core.excludesfile '~/.gitignore'

#brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew tap azure/functions
brew tap homebrew/cask-fonts
brew install wget
brew install git
brew install gh
brew install python
brew install azure-cli
brew install node
npm i -g yarn
brew install kubernetes-cli
brew install google-chrome
brew install firefox
brew install spotify
brew install iterm2
brew install visual-studio-code
brew install sublime-text
brew install jetbrains-toolbox
brew install docker
brew install font-fira-code
brew install scroll-reverser
brew install vlc

#powerline fonts
git clone https://github.com/powerline/fonts.git
sh ./fonts/install.sh
rm -rf fonts

#oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i.bak "s/%USER_NAME%/$USER/g" "profile/.zshrc"
mv profile/.zshrc ~/.zshrc
mv profile/.zshrc.bak profile/.zshrc
cp profile/.profile ~/
# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp ~/profile/vscode/settings.json ~/Library/Application\ Support/Code/User/
code --install-extension k--kato.intellij-idea-keybindings

ssh-keygen -t rsa -b 4096 -C $email
echo "Your public SSH key:\n"
cat ~/.ssh/id_rsa.pub
echo "\n"
echo "Installation complete!"
/Applications/Firefox.app/Contents/MacOS/firefox https://github.com/login
