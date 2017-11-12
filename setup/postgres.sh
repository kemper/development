set -v

sudo apt-get install -y postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser --superuser ${USER}
sudo -u postgres createdb -O ${USER} test
