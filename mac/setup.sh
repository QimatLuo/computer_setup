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

# system preferences
/usr/libexec/PlistBuddy -c "set :_HIHideMenuBar 1" ~/Library/Preferences/.GlobalPreferences.plist.plist

/usr/libexec/PlistBuddy -c "Delete :persistent-apps" ~/Library/Preferences/com.apple.dock.plist
/usr/libexec/PlistBuddy -c "Delete :persistent-others" ~/Library/Preferences/com.apple.dock.plist
/usr/libexec/PlistBuddy -c "Set :autohide 1" ~/Library/Preferences/com.apple.dock.plist
/usr/libexec/PlistBuddy -c "Set :launchanim 0" ~/Library/Preferences/com.apple.dock.plist
/usr/libexec/PlistBuddy -c "Set :orientation right" ~/Library/Preferences/com.apple.dock.plist
/usr/libexec/PlistBuddy -c "Set :show-recents 0" ~/Library/Preferences/com.apple.dock.plist
osascript -e 'delay 3'  -e 'tell Application "Dock"' -e 'quit' -e 'end tell' -e 'delay 3'

/usr/libexec/PlistBuddy -c "Set :DateFormat HH:mm:ss" ~/Library/Preferences/com.apple.menuextra.clock.plist
