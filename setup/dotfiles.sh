set -v

git clone https://github.com/kemper/dotfiles $HOME/development/projects/dotfiles
cd $HOME/development/projects/dotfiles
bash bin/install > /dev/null

if grep ".bashrc.after" ~/.bashrc ; then
  echo "bash dotfiles already installed"
else
  echo "source $HOME/.bashrc.after" >> $HOME/.bashrc
fi
