file=".vimrc"
rm -f "${HOME}/${file}"
ln -s "${PWD}/$(dirname $0)/${file}" "$HOME"
