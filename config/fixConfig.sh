#!/bin/bash

cp -r /tmp/powerdns /etc/

echo $role
if [[ $role == "slave" ]]
then
  sed -i "s|&&MASTER&&|no|g" /etc/powerdns/pdns.conf
  sed -i "s|&&SLAVE&&|yes|g" /etc/powerdns/pdns.conf
fi
if [[ $role == "master" ]]
then
  sed -i "s|&&MASTER&&|yes|g" /etc/powerdns/pdns.conf
  sed -i "s|&&SLAVE&&|no|g" /etc/powerdns/pdns.conf
fi

sed -i "s|&&ONLYNOTIFY&&|$onlynotify|g" /etc/powerdns/pdns.conf
sed -i "s|&&ALSONOTIFY&&|$alsonotify|g" /etc/powerdns/pdns.conf
sed -i "s|&&APIKEY&&|$apikey|g" /etc/powerdns/pdns.conf
sed -i "s|&&AXFRIPS&&|$axfrips|g" /etc/powerdns/pdns.conf
sed -i "s|&&IPMASTER&&|$ipmaster|g" /etc/powerdns/pdns.conf

sed -i "s|&&DBSERVER&&|$dbServer|g" /etc/powerdns/pdns.d/pdns.local.gmysql.conf
sed -i "s|&&DBNAME&&|$dbName|g" /etc/powerdns/pdns.d/pdns.local.gmysql.conf
sed -i "s|&&DBUSER&&|$dbUser|g" /etc/powerdns/pdns.d/pdns.local.gmysql.conf
sed -i "s|&&DBPASS&&|$dbPass|g" /etc/powerdns/pdns.d/pdns.local.gmysql.conf

