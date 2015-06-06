#!/bin/bash
cd $HOME
# setup vagrant user as an admin of the system
bash /var/www/elmsln/scripts/install/users/elmsln-admin-user.sh
# refresh file so its good when next call uses it
source $HOME/.bashrc
# add vagrant to the admin group
sudo usermod -a -G admin vagrant
# set all permissions correctly and for vagrant user
sudo bash /var/www/elmsln/scripts/utilities/harden-security.sh vagrant
# restart apache / mysql just to be safe
sudo /etc/init.d/httpd restart
sudo /etc/init.d/mysqld restart