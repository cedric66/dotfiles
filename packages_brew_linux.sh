#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#add Homebrew to your PATH

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/vagrant/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#Install Homebrew's dependencies if you have sudo access:

sudo apt-get install build-essential

brew install gcc

