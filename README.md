# saltyjoomla
my joomla salt stack

https://websiteforstudents.com/install-joomla-cms-on-ubuntu-16-04-lts-with-apache2-mariadb-php-7-1-and-lets-encrypt-free-ssl-tls/
https://hostadvice.com/how-to/how-to-install-joomla-on-an-ubuntu-18-04-vps-or-dedicated-server/
https://github.com/fintanmm/joomla-formula
http://terokarvinen.com/2018/aikataulu-palvelinten-hallinta-ict4tn022-3004-ti-ja-3002-to-loppukevat-2018-5p#comment-4236
http://terokarvinen.com/?s=mariadb
https://github.com/AlfieLinux/saltyjoomla
https://github.com/AlfieLinux/saltyjoomla.git

Installing apache 

sudo apt-get -y install apache2

installing mariadb 

sudo apt-get -y install mariadb-server mariadb-client

sudo mysql_secure_installation

sudo systemctl restart mysql.service

sudo apt-get -y install php7.1 libapache2-mod-php7.1 php7.1-common php7.1-mbstring php7.1-xmlrpc php7.1-soap php7.1-gd php7.1-xml php7.1-intl php7.1-mysql php7.1-cli php7.1-mcrypt php7.1-ldap php7.1-zip php7.1-curl

sudo mysql -u root -p

CREATE DATABASE joomla;

GRANT ALL ON joomla.* TO joomla@localhost IDENTIFIED BY 'goodpassword123';

FLUSH PRIVILEGES;
EXIT;

naruadb -u joomla -p
