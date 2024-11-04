# SNIK Container Infrastructure

Docker (compose) setup for the SNIK Graph, SPARQL endpoint and a RickView instance.

## Setup
* Run the following script:
```
git clone git@github.com:snikproject/docker.git
cd docker
git submodule update --init
cp .env.dist .env
docker compose up --build
```
* We use git submodules for snikproject/ontology and snikproject/graph
* For local testing, add the `proxy` profile to `.env` for easier access of components: SNIK Graph at <http://localhost/>, the SPARQL endpoint at <http://localhost/sparql>, RickView at <http://localhost/ontology/>.
* You can customize the `.env`, for example removing `graph` the profiles will stop it from starting

## Customizing the Ontology

If you want to exclude subontologies from loading or adding triples (e.g. to materialise some property), you need to
* Add its Turtle (`.ttl`) or N-Triples (`.nt`) file to the `ontology` directory here
* The SPARQL endpoint does **not** load files located in subdirectories of `ontology`
* Consult the compose file for more detailed information
* Rebuild and restart the container
```
docker compose down --remove-orphans
docker compose up --build --detach
```

## Updating
```
git pull
git submodule update
docker compose down --remove-orphans
docker compose up --build --detach
```
