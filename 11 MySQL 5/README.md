# Overview

Launch a MySql image initialized with a crm database.  SQL initialization
 scripts are located at `scripts/`.  These can be run manually as needed. Data
 is stored at `./data`.

Run with:

```shell
docker container run \
    --name mysql_local \
    --rm \
    -it \
    -v ~/docker/mysql-data:/var/lib/mysql \
    -v "`pwd`/init":/docker-entrypoint-initdb.d \
    -e MYSQL_ROOT_PASSWORD=dev \
    -p 3306:3306 \
    mysql:5
```
