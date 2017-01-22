# Start's the installation
clear

cd ~
# Backup files
rm -rf ~/.vim_backups
mkdir ~/.vim_backups

cp -rf ~/.vim ~/.vim_backups cp ~/.vimrc ~/.vim_backups
echo "Backup complete"

# Get shell scripts
rm -rf ~/.scripts
git clone https://github.com/Pragtechnologies/.scripts.git

rm ~/.vimrc
ln -s ~/.scripts/.vimrc ~/.vimrc

# Vim pluggins
echo "Reformats Vim Pluggins"
rm -rf ~/.vim
cd ~
git clone https://github.com/Pragtechnologies/.vim.git
cd ~/.vim
autocmd VimEnter * PlugInstall --sync | source ~/.vimrc


echo "Compile Command-T"
cd ~/.vim/plugged/Command-T/ruby/command-t
ruby extconf.rb make
rake make

echo "Compile VimProc"
cd ~/.vim/plugged/vimproc.vim
make

# All set
echo "All set!"
