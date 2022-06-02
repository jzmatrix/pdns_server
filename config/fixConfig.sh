#!/bin/bash

cp -r /tmp/powerdns /etc/

sed -i "s|&&IPLIST&&|$iplist|g" /etc/powerdns/pdns.conf
sed -i "s|&&IPLIST2&&|$iplist2|g" /etc/powerdns/pdns.conf
sed -i "s|&&APIKEY&&|$apikey|g" /etc/powerdns/pdns.conf
sed -i "s|&&AXFRIPS&&|$axfrips|g" /etc/powerdns/pdns.conf
sed -i "s|&&IPMASTER&&|$ipmaster|g" /etc/powerdns/pdns.conf

sed -i "s|&&DBSERVER&&|$dbServer|g" /etc/powerdns/pdns.d/pdns.local.gmysql.conf
sed -i "s|&&DBNAME&&|$dbName|g" /etc/powerdns/pdns.d/pdns.local.gmysql.conf
sed -i "s|&&DBUSER&&|$dbUser|g" /etc/powerdns/pdns.d/pdns.local.gmysql.conf
sed -i "s|&&DBPASS&&|$dbPass|g" /etc/powerdns/pdns.d/pdns.local.gmysql.conf

