# pa11y-dashboard-docker-container
Docker Container with a auto updating pa11y-dashboard

## How to run

* docker compose up
* open your browser to localhost:4000

Container will everytime clone pa11y dashboard and install it. You should get a fresh and updated installation.

## How to edit

### about production.json

* mongo is the name of the container. it needs to match with the name of the service.

### about Dockerfile

* dependencies are required in order to permits puppeteer to work
* NODE ENV is required to handle what configuration file will be loaded from the service (in this case production.json)

### about updating

* sometime there are trouble that needs to make a docker rmi <image> and create again with docker compose up

