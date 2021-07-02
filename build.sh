#!/bin/bash

cd mysql
unzip 1_patcher.sql.zip
docker build -t patcher_mysql .
mysql_container_id=`docker run -d -p 3306:3306 patcher_mysql`

cd ..
cp license-portaldevelopment-developer-6.2ga1-liferaycom.xml liferay_portal/mount_dir/deploy/license-portaldevelopment-developer-6.2ga1-liferaycom.xml

cd liferay_portal
sed -i'.bak' \
    -e "s+jdbc.default.url=jdbc:mysql://.*:3306+jdbc.default.url=jdbc:mysql://localhost:3306+g" \
    -e "s+jdbc.default.driverClassName=com.mysql.cj.jdbc.Driver+jdbc.default.driverClassName=com.mysql.jdbc.Driver+g" \
    templates/bundle/liferay/portal-ext.properties \
    templates/bundle/liferay/portal-setup-wizard.properties

./build_local_image.sh templates/bundle/liferay patcher_portal latest

docker stop $mysql_container_id

# docker-compose up -d
