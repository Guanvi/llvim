cd ~/
[ -e .vim ]&&mv .vim .vim.back-$RANDOM
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/colors
mkdir ~/.vim/plugged
cp dracula.vim ~/.vim/colors/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
