set -v

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server libmysqlclient-dev > /dev/null 2>&1
# Set the password in an environment variable to avoid the warning issued if set with `-p`.
MYSQL_PWD=root mysql -uroot <<SQL
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('');
CREATE USER '${USER}'@'localhost';
GRANT ALL PRIVILEGES ON *.* to '${USER}'@'localhost' WITH GRANT OPTION;
flush privileges;
SQL
