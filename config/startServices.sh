#!/bin/bash

env

/opt/fixConfig.sh

#mkdir /run/sshd
#mkdir /var/run/sshd
#/usr/sbin/sshd -D

/usr/sbin/pdns_server --config-dir=/etc/powerdns/
