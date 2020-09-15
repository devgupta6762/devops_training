- Package Manager
  1. Locate and explore the directories containing repository definitions.
  2. Practice enabling and disabling epel repository in Centos system.
  3. Install httpd2.4/apache2.4 using its .rpm/.deb file.
  4. Use the package manager to install php7.2 and its dependencies.
  5. Use the package manager to uninstall php7.2 and its dependencies.
  6. Note packages and make a list of their dependencies, install and run them.
  7. Upgrade the installed packages by:
  8. Debian / Ubuntu :  apt-get upgrade , apt-get dist-upgrade.
  9. CentOS : sudo yum update
  10. Fedora : sudo dnf upgrade
  11. FreeBSD Packages : sudo pkg upgrade
  12. FreeBSD Ports : less /usr/ports/UPDATING
  13. Perform operations to find, view and remove the specific packages.
- LAMP
  1. setup a lamp server and host a wordpress site on your local system
      Note: Don't install php directly using yum or apt-get
      a. compile it from source using PREFIX with /usr/local/php directory
  2. Host one more site with yourname.com and page should say i am devops ninja
      (Name based virtual hosting)
      a. Note: Replace yourname with your actual name e.g: yashvinderhooda.com
      b. wordpress site should open with the domain -> mywordpress.com
      c. Make a doc having all the configurations that you will do like - apache configs, etc...
Good to Do:
- Package Manager
  1. Manipulate packages and repositories
  2. Installs portmaster and uses it to update installed ports.
  3. Install nodejs 10.x using source code.
  4. Install and setup MySQL 5.7 in non interactive mode.
- LAMP
  1. You may try to do this(LAMP question in Must-Do section) using shell script