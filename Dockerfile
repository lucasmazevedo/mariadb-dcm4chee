FROM mariadb:10.1.14

# default configuration file
COPY server.cnf /etc/mysql/conf.d/server.cnf
RUN chown root:mysql /etc/mysql/conf.d/server.cnf
RUN chmod 664 /etc/mysql/conf.d/server.cnf

# copy sql files
COPY docker-entrypoint-initdb.d docker-entrypoint-initdb.d/
COPY update-schema update-schema/
RUN chmod 777 -Rf /docker-entrypoint-initdb.d
RUN chmod 777 -Rf /update-schema
