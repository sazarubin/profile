echo "Enter git global user name: "
read name
git config --global user.name $name
echo "Enter git global user email (it also will be used for ssh-keygen):"
read email
git config --global user.email $email
cp profile/.globalgitignore ~/.gitignore
git config --global core.excludesfile '~/.gitignore'

#brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap azure/functions
brew tap drone/drone
brew tap homebrew/cask-fonts
brew install wget
brew install git
brew install python
curl https://dotnetwebsite.azurewebsites.net/download/dotnet-core/scripts/v1/dotnet-install.sh > dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh --channel 2.2
./dotnet-install.sh --channel LTS
./dotnet-install.sh --channel Current
rm dotnet-install.sh
brew install azure-cli
brew install azure-functions-core-tools
brew install node
npm i -g yarn
brew install kubernetes-cli
brew cask install xquartz
brew install freerdp
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
