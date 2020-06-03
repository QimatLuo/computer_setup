if ! [ -x "$(command -v brew)" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# general
brew install \
  git \
  gpg \
  grep \
  tmux \
  vim
brew cask install \
  docker \
  google-chrome \
  team

# nvm
mkdir -p "${HOME}/.nvm"
brew install nvm
