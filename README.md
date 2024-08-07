# SNIK Container Infrastructure

## Setup

* clone this repository
* `git submodule init`
* `git submodule update`
* copy `.env.dist` to `.env`, customize the environment variable values. In particular, remove the "graph" profile if you don't want to start it
* for local testing, add the "proxy" profile to `.env` for easier access of components: SNIK Graph at <http://localhost/>, the SPARQL endpoint at <http://localhost/sparql>, RickView at <http://localhost/ontology/>.
* docker-compose up
