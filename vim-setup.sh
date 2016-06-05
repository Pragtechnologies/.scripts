# Start's the installation
clear

# Vim pluggins
echo "Reformats Vim Pluggins"
rm -rf ~/.vim
cd ~

git clone git@github.com:Pragtechnologies/.vim.git
cd ~/.vim
bower install
mv bundle/vim-pathogen/autoload .

echo "Compile Command-T"
cd ~/.vim/bundle/Command-T/ruby/command-t
ruby extconf.rb make
rake make

echo "Compile VimProc"
cd ~/.vim/bundle/vimproc.vim
make

echo "Copy Vimrc and Bashrc"
rm -rf ~/.scripts
mkdir ~/.scripts
git clone git@github.com:Pragtechnologies/.scripts.git ~/.scripts
rm ~/.vimrc
ln -P ~/.scripts/.vimrc ~/.vimrc


# All set
echo "All set!"
