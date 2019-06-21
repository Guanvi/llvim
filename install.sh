cd ~/
[ -e .vim ]&&mv .vim .vim.back-$RANDOM
mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/colors
mkdir ~/.vim/plugged
cd -
cp .vimrc ~/.vimrc
cp dracula.vim ~/.vim/colors/
cp coc-settings.json ~/.vim/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



echo "Run PlugInstall by ex-mode in the vim"
echo "then Run CocInstall coc-dictionary coc-tag coc-word coc-emoji coc-omni coc-syntax coc-gocode  coc-json  
