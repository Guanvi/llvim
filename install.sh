#!/bin/bash
echo 安装开始...
echo "正在创建~/.vim/autoload..."
mkdir -p ~/.vim/autoload
if [ $? -eq 0 ]
then 
	echo .vim/autoload创建成功!
fi
echo 正在安装vim-plug至~/.vim/autoload...

cp plug.vim ~/.vim/autoload 
if [ $? -eq 0 ]
then 
	echo vim-plug安装成功！
fi
echo 正在创建颜色主题目录~/vim/colors...
mkdir ~/.vim/colors
if [ $? -eq 0 ]
then 
	echo .vim/colors创建成功!
fi
cp Tomorrow-Night-Eighties.vim solarized.vim ~/.vim/colors 
echo 正在加载.vimrc配置文件...
cp .vimrc ~/ 
echo ".vimrc加载成功!"
echo 安装完成!
echo 请在vim命令模式下输入PlugInstall安装其余插件.
