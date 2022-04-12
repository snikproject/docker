# SNIK Container Infrastructure

## Setup

* clone this repository
* clone <https://github.com/snikproject/ontology>, <https://github.com/snikproject/lodview>, <https://github.com/snikproject/graph> and <https://github.com/snikproject/snik.eu> in the same parent directory as this one
* copy `.env.dist` to `.env`, customize the environment variable values and remove the "graph" or "snik.eu" profile line if you don't want to start SNIK Graph or the website
* docker-compose up
