# Overview

Launch a MySql image initialized with a crm database.  SQL initialization
 scripts are located at `scripts/`.  These can be run manually as needed. Data
 is stored at `./data`.

Run with:

```shell
# Errors out "docker: no matching manifest for linux/arm64/v8 in the manifest list entries."
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


UPDATE: As at April 1, 2022: We no longer need the `--platform` parameter because docker officially released Docker for Mac (ARM) that works without the said parameter. - As of Sun, Oct 27, 2024 at 1:54:50 PM, below is still the proper way to go.

On Apple Silicon, run with: 

```shell
docker container run \
    --platform linux/x86_64 \
    --name mysql_local \
    --rm \
    -it \
    -v ~/docker/mysql-data:/var/lib/mysql \
    -v "`pwd`/init":/docker-entrypoint-initdb.d \
    -e MYSQL_ROOT_PASSWORD=dev \
    -p 3306:3306 \
    mysql:5
```

Note: Above is not optimal and may have significant energy impact due to the emulation of x86 architecture.

## Setting Up the Test Data (One Time Only)
After connecting to the database, 
1.  Run the init/setup.sql 
2.  Run scripts/customer.sql
