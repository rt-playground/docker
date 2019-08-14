# Overview

Launch a MySql image initialized with customers table.  SQL initialisation script
is located at `init/setup.sql`.

Run with:

```shell
docker container run --rm -it -e MYSQL_ROOT_PASSWORD=dev -p 3306:3306 mysql:5
```
