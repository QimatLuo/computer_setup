if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
if [ "$ZSH_THEME" != "af-magic" ]; then
  sed -i 's/ZSH_THEME="'$ZSH_THEME'"/ZSH_THEME="af-magic"/' "${HOME}/.zshrc"
fi
if [ "$(bindkey '^[k' | cut -d' ' -f2)" != 'up-line-or-beginning-search' ]; then
  echo 'bindkey "^[k" up-line-or-beginning-search' >> "${HOME}/.zshrc"
fi
if [ "$(bindkey '^[j' | cut -d' ' -f2)" != 'down-line-or-beginning-search' ]; then
  echo 'bindkey "^[j" down-line-or-beginning-search' >> "${HOME}/.zshrc"
fi
if [ "$(bindkey '^[h' | cut -d' ' -f2)" != 'backward-char' ]; then
  echo 'bindkey "^[h" backward-char' >> "${HOME}/.zshrc"
fi
if [ "$(bindkey '^[l' | cut -d' ' -f2)" != 'forward-char' ]; then
  echo 'bindkey "^[l" forward-char' >> "${HOME}/.zshrc"
fi
