# OntoWiki Docker Container

This container provides [OntoWiki](http://ontowiki.net) ([@github](https://github.com/AKSW/OntoWiki)) in a container.

## Usage instructions

This container just has the static OntoWiki files read configured to be served by a php and nginx container.
Additionally it requires a virtuoso container as database backend.

This image is built to be used in the Ontowiki Docker Compose setup: https://github.com/Dockerizing/OntoWiki.compose
