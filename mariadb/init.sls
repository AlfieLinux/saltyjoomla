mariadb:
  pkg.installed:
   - pkgs:
     - mariadb-client
     - mariadb-server

/tmp/joomladb.sql:
  file.managed:
    - mode: 600
    - source: salt://mariadb/joomladb.sql

'cat /tmp/joomladb.sql|mariadb -u root':
  cmd.run:
    - unless: "echo 'show databases'|sudo mariadb -u root|grep '^joomla$'"
