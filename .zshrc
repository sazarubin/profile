export ZSH="/Users/%USER_NAME%/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  colorize
  git
  docker
  vscode
  yarn)
DEFAULT_USER=%USER_NAME%
LANG="EN_US.UTF-8"

source $ZSH/oh-my-zsh.sh
source ~/.profile
