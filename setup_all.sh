if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  source "$(dirname $0)/ubuntu/setup.sh"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  source "$(dirname $0)/brew/setup.sh"
  source "$(dirname $0)/mac/setup.sh"
else
  echo "$OSTYPE"
fi
source "$(dirname $0)/git/setup.sh"
source "$(dirname $0)/tmux/setup.sh"
source "$(dirname $0)/vim/setup.sh"
source "$(dirname $0)/zsh/setup.sh"
