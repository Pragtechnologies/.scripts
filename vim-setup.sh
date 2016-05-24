# Start's the installation
clear

# Vim pluggins
echo "1. Reformat Vim Pluggins"
rm -rf ~/.vim
cd ~

git clone https://github.com/Pragtechnologies/.vim.git
cd ~/.vim
bower install
mv bundle/vim-pathogen/autoload .


# All set
clear
echo "All set!"
