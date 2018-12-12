# Made by Tuomas Olkinuora 2018, GPLv3

# Installing all prerequisites for apache and php

install-ap2-php:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-php
      - php
      - php-cli
      - php-common
      - php-mbstring
      - php-gd
      - php-intl
      - php-xml
      - php-mysql
      - php-zip
      - php-curl
      - php-xmlrpc

# To access website from a different URL.

/etc/apache2/sites-available/joomlaweb.conf:
  file.managed:
    - source: salt://apache/joomlaweb.conf

# To enable accessibility from the different URL.

/etc/apache2/mods-enabled/rewrite.load:
  file.symlink:
    - target: /etc/apache2/mods-available/rewrite.load

# Restarting Apache

apache2restart:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/rewrite.load
