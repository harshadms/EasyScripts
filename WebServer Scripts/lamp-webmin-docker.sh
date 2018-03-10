sudo apt update &&
sudo apt install wget unzip python-software-properties &&
wget https://github.com/calvinlough/sqlbuddy/raw/gh-pages/sqlbuddy.zip &&
sudo mv sqlbuddy.zip /var/www/example.com/public_html/sqlbuddy.zip &&
sudo unzip /var/www/example.com/public_html/sqlbuddy.zip &&
sudo apt-get install php5-curl &&
sudo service apache2 restart &&
sudo service mysql restart &&
echo "Done"
