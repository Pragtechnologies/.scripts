# Start's the installation
clear

# Backup files
rm -rf ~/.vim_backups
mkdir ~/.vim_backups

cp -rf ~/.vim ~/.vim_backups
cp ~/.vimrc ~/.vim_backups
echo "Backup complete"

# Vim pluggins
echo "Reformats Vim Pluggins"
rm -rf ~/.vim
cd ~
git clone https://github.com/Pragtechnologies/.vim.git
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
cd ~
rm -rf ~/.scripts
git clone https://github.com/Pragtechnologies/.scripts.git
rm ~/.vimrc
ln -s ~/.scripts/.vimrc ~/.vimrc

# All set
echo "All set!"
