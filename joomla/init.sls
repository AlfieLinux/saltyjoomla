getjoomla:
  cmd.run:
    - name: sudo wget https://downloads.joomla.org/cms/joomla3/3-8-10/Joomla_3-8-10-Stable-Full_Package.zip -P /tmp/

unzipjoomla:
  archive.extracted:
    - name: /var/www/html/joomla
    - source: /tmp/Joomla_3-8-10-Stable-Full_Package.zip 
    - archive_format: zip
    - enforce_toplevel: False

/var/www/html/joomla:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - recurse:
      - user
      - group
      - mode

zipremoval:
  cmd.run:
    - name: sudo rm -r /tmp/Joomla_3-8-10-Stable-Full_Package.zip

/var/www/html/joomla/configuration.php:
  file.managed:
    - source: salt://joomla/configuration.php
    - user: www-data
    - group: www-data
    - mode: 755

rminstalldir:
  cmd.run:
    - name: sudo rm -r /var/www/html/joomla/installation
