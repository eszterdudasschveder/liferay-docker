FROM mysql:5.6

ENV PATH=/usr/lib/jvm/java-1.8.0-openjdk-amd64/bin:$PATH
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
ENV MYSQL_ROOT_PASSWORD=admin
ENV MYSQL_DATABASE=lportal
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=admin

COPY 1_patcher.sql $HOME/docker-entrypoint-initdb.d
COPY 2_lportal_OSB_PatcherTicketHint.sql $HOME/docker-entrypoint-initdb.d
COPY 3_update_password_column.sql $HOME/docker-entrypoint-initdb.d

EXPOSE 3306