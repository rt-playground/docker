# Docker-Compose exercise

Deployments folder located at `~/deployments`.  Automatically created when you run your service.

Run all the services in detached mode

`docker-compose up -d`

See running services

`docker-compose ps`

Follow the logs

`docker-compose logs -f`

Spawn a new terminal tab then copy the `webapp.jar` from section `03...` to the `deployments` directory.

Check the resource at `http://localhost:8080/webapp/resources/persons`

Kill the log terminal with `ctrl + c`

Bring the services down with `docker-compose down`

## References

[LinkedIn Learning Video](https://www.linkedin.com/learning/docker-for-java-developers/docker-compose-file?u=2105028)
