#!/bin/bash

# Downloads vimrc
wget -P ~/.vimrc https://raw.githubusercontent.com/gustavowl/sysconf/master/vimrc

#Downloads vim plug
mkdir -p ~/.vim/autoload
wget -P ~/.vim/autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Downloads C and C++ syntax highlighting
git clone https://github.com/octol/vim-cpp-enhanced-highlight.git /tmp/vim-cpp-enhanced-highlight
mkdir -p ~/.vim/after/syntax/
mv /tmp/vim-cpp-enhanced-highlight/after/syntax/*.vim ~/.vim/after/syntax/
rm -rf /tmp/vim-cpp-enhanced-highlight

# Run the scripts
vim +'PlugInstall --sync' +qa
python3 ~/.vim/plugged/YouCompleteMe/install.py --clang-completer --all
