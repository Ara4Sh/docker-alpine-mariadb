FROM alpine
MAINTAINER Arash Shams <xsysxpert@gmail.com>

#Setting up Environment
ENV MYSQL_USER=mysql \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/var/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql


#Install Mariadb
RUN apk --update upgrade
RUN apk add bash
RUN apk add mariadb mariadb-client 

#Remove Cache
RUN rm -rf /var/cache/apk/*

#Setting up EntryPoint
COPY ep /sbin/ep
RUN chmod 755 /sbin/ep

#Expose TCP 3306
EXPOSE 3306/tcp

#Setting up Mariadb Data dir and Mariadb Run directory
VOLUME ["${MYSQL_DATA_DIR}", "${MYSQL_RUN_DIR}"]

#Entrypoint
ENTRYPOINT ["/sbin/ep"]

#CMD
CMD ["/usr/bin/mysqld_safe"]
