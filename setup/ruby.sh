set -v

sudo apt-get -y install libxml2 libxml2-dev libxslt1-dev
sudo apt-get -y install libncurses5-dev
sudo apt-get -y install nodejs
sudo apt-get -y install imagemagick
sudo apt-get -y install mupdf mupdf-tools
sudo apt-get -y install ffmpeg
sudo apt-get -y install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

rbenv install 2.6.0
rbenv global 2.6.0

gem install bundler
gem install rake
