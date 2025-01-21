#!/bin/bash
cd /var/www/html
rm -rf *
yum install httpd php php-mysql -y
sudo amazon-linux-extras enable php7.2
sudo yum clean metadata
sudo yum install php-cli php-fpm php-mysqlnd php-pdo php-mbstring
yum update -y
cd /var/www/html
echo "healthy" > healthy.html
wget https://wordpress.org/wordpress-6.7.1.tar.gz
tar -xzf wordpress-6.7.1.tar.gz
cp -r wordpress/* /var/www/html/
rm -rf wordpress
rm -rf wordpress-6.7.1.tar.gz
chmod -R 755 wp-content
chown -R apache:apache wp-content
service httpd start
chkconfig httpd on

metrodb.cja2qo8wc4bu.ca-central-1.rds.amazonaws.com
admin
Metro1234
metrodb

sushma
TMJ$@E6*OnQ(H0Yz1g

