# Overview

## Prerequisites

Set your project path in the `docker-compose.yml` under coldfusion > volumes.

On first run:
    1. Comment out all the coldfusion10 volumes.
    2. Create the folder `~/docker/coldfusion10/cfusion/lib` on the host.
    3. Generate the datasource configuration by configuring it manually in the admin console.  Then copy the file `/opt/coldfusion10/cfusion/lib/neo-datasource.xml`
       to `${HOME}/docker/coldfusion10/cfusion/lib/neo-datasource.xml`

    ```shell
    docker cp <containerId>:/opt/coldfusion10/cfusion/lib/neo-datasource.xml ${HOME}/docker/coldfusion10/cfusion/lib/neo-datasource.xml
    ```

    docker cp 0d06ca7cb6d1:/opt/coldfusion10/cfusion/lib/neo-datasource.xml ${HOME}/docker/coldfusion10/cfusion/lib/neo-datasource.xml


    4. yo.

To start services: `docker-compose up -d`

To view the logs: `docker-compose logs -f`
