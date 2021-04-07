sh run_vimrc_setup.sh

echo "Installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Done!"

echo "Installing tmux-plugin"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Done!"

read -p "Press enter to continue"