#!/bin/bash
export ANT_HOME=/mnt/liferay/ant
export PATH=$ANT_HOME/bin:$PATH
export USER=liferay
echo -e "ANT_HOME: $ANT_HOME\nPATH: $PATH\nUSER: $USER"
printf "    app.server.parent.dir=/opt/liferay\n    app.server.tomcat.dir=\${app.server.parent.dir}/tomcat\n    ant.build.javac.source=1.7\n    ant.build.javac.target=1.7" > /mnt/liferay-plugins-ee/build.$USER.properties
cd /mnt/liferay-plugins-ee/shared/osb-patcher-shared ; ant deploy
cd /mnt/liferay-plugins-ee/hooks/portal-compat-hook ; ant deploy
cd /mnt/liferay-plugins-ee/portlets/marketplace-portlet ; ant deploy
cd /mnt/liferay-plugins-ee/themes/osb-patcher-theme ; ant deploy
cd /mnt/liferay-plugins-ee/portlets/osb-patcher-portlet ; ant deploy
cp /opt/liferay/license-portaldevelopment-developer-6.2ga1-liferaycom.xml /opt/liferay/deploy/license-portaldevelopment-developer-6.2ga1-liferaycom.xml
