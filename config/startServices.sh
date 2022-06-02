#!/bin/bash

/opt/fixConfig.sh

mkdir /run/sshd
mkdir /var/run/sshd
/usr/sbin/sshd -D
