#!/bin/sh

# hier den eigenen public-key eintragen
public_key='hier tragen sie zwischen den Hochkomma ihren SSH public-key ein, er startet mit ssh-rsa .... '

# add public key for usr vagrant
echo $public_key >> /home/vagrant/.ssh/authorized_keys

# add public key for root
chmod 700 /root/.ssh
echo $public_key >> /root/.ssh/authorized_keys && chmod 600 /root/.ssh/authorized_keys

