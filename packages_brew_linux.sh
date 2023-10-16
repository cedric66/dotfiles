#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#add Homebrew to your PATH

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/vagrant/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#Install Homebrew's dependencies if you have sudo access:

sudo apt-get install build-essential

brew install gcc

echo "Installing development tools"
brew install tfenv 
brew install pyenv
brew install kubectx
brew install kind
brew install lazydocker
brew install k9s
brew install go
brew install helm
brew install jq
brew install kustomize
brew install nmap
brew install openjdk
brew install awscli
brew install htop
brew install htop-osx
brew install nvm
brew install zsh-completions
brew install watch
brew install p7zip
brew install neovim
brew install make
brew install vagrant-completion
brew install trash
brew install neofetch
brew install kubectl
brew install bat
brew install fd
