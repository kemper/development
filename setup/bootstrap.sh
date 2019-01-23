set -v

bash $HOME/development/setup/swap.sh
bash $HOME/development/setup/init.sh
bash $HOME/development/setup/packages.sh
bash $HOME/development/setup/ruby.sh
bash $HOME/development/setup/mysql.sh
bash $HOME/development/setup/postgres.sh
bash $HOME/development/setup/docker.sh
bash $HOME/development/setup/dotfiles.sh
bash $HOME/development/setup/lang.sh

echo 'Installation complete!'
