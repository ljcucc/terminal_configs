echo "Config your computer..."
cp ./vimrc/.vimrc ~/
cp ./.tmux.conf ~/
echo "Done!"

echo "Installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Done!"

echo "Installing tmux-plugin"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Done!"
