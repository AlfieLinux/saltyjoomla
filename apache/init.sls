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

/etc/apache2/sites-available/joomlaweb.conf:
  file.managed:
    - source: salt://apache/joomlaweb.conf

/etc/apache2/sites-enabled/joomlaweb.conf:
  file.symlink:
    - target: /etc/apache2/sites-available/joomlaweb.conf

apache2restart:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/sites-available/joomlaweb.conf
      - file: /etc/apache2/sites-enabled/joomlaweb.conf

