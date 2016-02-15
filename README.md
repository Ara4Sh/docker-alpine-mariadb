[![Docker Repository on Quay.io](https://quay.io/repository/araax/mariadb/status "Docker Repository on Quay.io")](https://quay.io/repository/araax/mariadb)
# MariaD on AlpineLinux

Minimal Docker container running mariadb on alpinelinux ( ~ 188mb)

#How to:
``` docker build -t araax/mariadb .```


``` docker run --name=mariadb10 -d 
		--env='DBNAME=app_production' \
		--env='DBUSER=appuser' --env='DBPASS=password' \
		--volume=/srv/docker/mariadb:/var/lib/mysql \
		araax/mariadb ```


#To do
Adding Galera replication
Adding MySQL Replication
Better Documentation

to contribute please add to do features .

Thanks to [sameersbn].
[sameersbn]: https://github.com/sameersbn/docker-mysql
