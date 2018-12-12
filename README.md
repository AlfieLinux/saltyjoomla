# saltyjoomla

This module was created as the "final project" for [ICT4TN022 "Configuration Management Systems"](http://terokarvinen.com/2018/aikataulu--palvelinten-hallinta-ict4tn022-3004-ti-ja-3002-to--loppukevat-2018-5p) 

This module is also under GPL Version 3 or later.

Creator: Tuomas Olkinuora (2018)

# What is Joomla you ask.

Joomla is a free and open-source content management system (CMS) for publishing web content. 
[More about Joomla here](https://en.wikipedia.org/wiki/Joomla)

# What does this module do?

**I would suggest caution, since this is by no means a secure module and I would suggest to not use it outside**

It was created for the sole purpose of quickly creating a testing environment for Joomla themes, templates and whatnot. This module is setup so that you can acces Joomla through localhost/joomla and the login details are listed below.

Database Configuration credentials: 

```
Host name: localhost
user: joomla
password: joomlaTest
Database Name: joomla
Table Prefix: can be anything
```

I made it so that you can manage the website settings yourself, since it only takes a few seconds.

# How do I install the module?

Glad you asked. You start by cloning my github salt repo to your /home/user/ directory

```bash
§ git clone https://github.com/AlfieLinux/saltyjoomla.git
```

Then you connect to the saltyjoomla directory, run the script inside and go to localhost/joomla

```bash
§ cd saltyjoomla
§ bash saltyjoomla.sh
§ firefox localhost/joomla
```

# Afterthoughts

So far this module only works on Xubuntu 18.04 (might work on other Xubuntus, but i've only tested it on 18.04).

