#!/bin/bash

/opt/fixConfig.sh

# Snippet to start daemon for local debug
#mkdir /run/sshd
#mkdir /var/run/sshd
#/usr/sbin/sshd -D

/usr/sbin/pdns_server --config-dir=/etc/powerdns/
