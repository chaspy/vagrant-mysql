#!/bin/sh
dd if=/dev/zero of=/tmp/test bs=1024k count=10
touch -d "2003/1/1 00:00:00" /tmp/test
find /tmp/ -size +10485759c -mtime +10 | xargs tar zcvf archive.tar.gz

rpm --import http://dev.mysql.com/doc/refman/5.7/en/checking-gpg-signature.html
rpm -ihv http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm
yum --enablerepo='mysql57-community*' install -y mysql-community-server
