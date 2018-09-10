# brew install fzf the_silver_searcher

ln -s $(pwd)/.tmux.conf ~/
ln -s $(pwd)/.bashrc ~/
# damn OSX
ln -s $(pwd)/.bashrc ~/.bash_profile

ln -s $(pwd)/.vimrc ~/
ln -s $(pwd)/.zshrc ~/
ln -s $(pwd)/.fzf.bash ~/
ln -s $(pwd)/.prompt ~/
ln -s $(pwd)/git-completion.bash ~/.git-completion.sh
cp donbr.vim ~/.vim/colors/donbr.vim

source ~/.bashrc
clear
