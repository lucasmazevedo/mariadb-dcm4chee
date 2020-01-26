## MARIADB FOR DCM4CHEE WITH DOCKER
Docker image that provides a MariaDB instance for DCM4CHEE 5.x

Based on https://github.com/dcm4che-dockerfiles/postgres-dcm4chee

BETA VERSION

# How to Use

docker run --name mariadb \
           -p 3306:3306 \
           -v /etc/localtime:/etc/localtime \
           -e MYSQL_DATABASE=pacsdb \
           -e MYSQL_USER=pacs\
           -e MYSQL_ROOT_PASSWORD=pacs \
           -d lucasmazevedo/mariadb-dcm4chee