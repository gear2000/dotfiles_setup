mkdir -p ~/dotfiles/vim/{autoload,bundle}
ln -s ~/dotfiles/vim ~/.vim           
cp -rp vimrc ~/dotfiles/vim/vimrc
cp -rp bash ~/dotfiles/
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/bash/bashrc ~/.bashrc
ln -s ~/dotfiles/bash/bash_profile ~/.bash_profile
ln -s ~/dotfiles/bash/aliases ~/.bash_aliases

git clone git://github.com/tpope/vim-pathogen.git pathogen  
mv pathogen/autoload/* ~/dotfiles/vim/autoload/  
rm -rf pathogen

#echo 'call pathogen#runtime_append_all_bundles()' >> .vimrc
#echo 'call pathogen#helptags()' >> .vimrc

sudo apt-get install ruby ruby-dev -y
sudo aptitude install ruby ruby-dev -y
sudo apt-get install ctags make -y
sudo apt-get install ack-grep -y
sudo apt-get install rack -y


cd ~/dotfiles
git init
git submodule add git://github.com/tpope/vim-fugitive.git vim/bundle/fugitive
git submodule add https://github.com/mileszs/ack.vim.git vim/bundle/ack
#git submodule add https://github.com/mitechie/pyflakes-pathogen.git
#git submodule add git://github.com/kevinw/pyflakes-vim.git vim/bundle/pyflakes-vim
git submodule add https://github.com/georgexsh/pyflakes-vim.git vim/bundle/pyflakes-vim
git submodule add git://github.com/ervandew/supertab.git vim/bundle/supertab
git submodule add git://github.com/scrooloose/nerdcommenter.git vim/bundle/nerdcommenter
git submodule add git://github.com/tomtom/checksyntax_vim.git vim/bundle/checksyntax
git submodule add git://github.com/scrooloose/nerdtree.git vim/bundle/nerdtree
git submodule add git://github.com/vim-scripts/taglist.vim.git vim/bundle/taglist
git submodule add git://github.com/vim-scripts/ctags.vim--Johnson.git vim/bundle/ctags
git submodule add git://github.com/altercation/vim-colors-solarized.git vim/bundle/vim-colors-solarized
git submodule add https://github.com/wincent/Command-T.git vim/bundle/command-t
cd vim/bundle/command-t
rake make


git submodule add https://github.com/sontek/rope-vim.git vim/bundle/ropevim
git submodule add git://github.com/Raimondi/delimitMate.git vim/bundle/delmitmate
git submodule add https://github.com/msanders/snipmate.vim.git vim/bundle/snipmate
git submodule add https://github.com/vim-scripts/TaskList.vim.git vim/bundle/tasklist
git submodule add https://github.com/ervandew/supertab.git vim/bundle/supertab
git submodule add https://github.com/sjl/gundo.vim.git vim/bundle/gundo 
git submodule add https://github.com/vim-scripts/TaskList.vim.git vim/bundle/tasklist

#git submodule add https://github.com/nvie/vim-flake8.git vim/bundle/vim-flake8



git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
git submodule init && git submodule update


