sudo apt update &&
sudo apt install apache2 &&
sudo apt-get install mysql-server php5-mysql &&
sudo mysql_install_db &&
sudo mysql_secure_installation &&
sudo apt install php-cli php-curl php-dev &&
echo "DONE : LampStack install successful"
