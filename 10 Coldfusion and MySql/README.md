# Overview

## Prerequisites

Set your project path in the `docker-compose.yml` under coldfusion > volumes.

On first run:
    1. Comment out all the coldfusion10 volumes.
    2. Generate the datasource configuration by configuring it manually in the
       admin console.  Then copy the file `/opt/coldfusion10/cfusion/lib/neo-datasource.xml`
       to `${HOME}/docker/coldfusion10/cfusion/lib/neo-datasource.xml`
