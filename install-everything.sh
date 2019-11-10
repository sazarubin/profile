echo "Enter git global user name: "
read name
git config --global user.name $name
echo "Enter git global user email (it also will be used for ssh-keygen):"
read email
git config --global user.email $email

#brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap azure/functions
brew tap drone/drone
brew tap homebrew/cask-fonts
brew install wget
brew install git
brew install python
brew cask install dotnet-sdk
brew install azure-cli
brew install azure-functions-core-tools
brew install node
npm i -g yarn
brew install drone
brew install kubernetes-cli
brew cask install xquartz
brew install freerdp
#helm
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/7c5ab2af66f83f767db328838424b1f379bd30d4/Formula/kubernetes-helm.rb
brew pin kubernetes-helm
brew cask install google-chrome
brew cask install firefox
brew cask install iterm2
brew cask install visual-studio-code
brew cask install sublime-text
brew cask install jetbrains-toolbox
brew cask install scaleft
sft config rdp.screensize 1280x800
brew cask install docker
brew cask install slack
brew cask install font-fira-code
brew cask install scroll-reverser
brew cask install vlc

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

cp ~/profile/vscode/settings.json ~/Library/Application\ Support/Code/User/
code --install-extension k--kato.intellij-idea-keybindings

ssh-keygen -t rsa -b 4096 -C $email
echo "Your public SSH key:\n"
cat ~/.ssh/id_rsa.pub
echo "\n"
echo "Installation complete!"
