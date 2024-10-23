# SNIK Container Infrastructure

## Setup

```
git clone git@github.com:snikproject/docker.git
git submodule update --init
cp .env.dist .env
docker compose up --build
```

* We use git submodules for snikproject/ontology and snikproject/graph
* for local testing, add the "proxy" profile to `.env` for easier access of components: SNIK Graph at <http://localhost/>, the SPARQL endpoint at <http://localhost/sparql>, RickView at <http://localhost/ontology/>.
* You can customize the .env, particularly removing the "graph" property will result in it not starting
