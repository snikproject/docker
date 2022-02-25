# Daten-Container erzeugen
# Virtuoso-Daten liegen normalerweise in /var/lib/virtuoso
# im verwendeten Docker-Image jedoch unter /data
docker create --name virtuoso-snik-data -v /data busybox
# Anwendungscontainer erzeugen
docker run \
  --name virtuoso-snik \
  -p :8080:8890 \
  -p 127.0.0.1:1111:1111 \
  -e SPARQL_UPDATE=true \
  -e DEFAULT_GRAPH=http://www.snik.eu/ontology \
  --volumes-from virtuoso-snik-data \
  -d \
  --restart=on-failure:10 \
  tenforce/virtuoso

docker run \
  --name virtuoso-snik \
  -p :8080:8890 \
  -p 127.0.0.1:1111:1111 \
  -e SPARQL_UPDATE=true \
  -e DEFAULT_GRAPH=http://www.snik.eu/ontology \
  --volumes-from virtuoso-snik-data \
  -d \
  --restart=always \
  tenforce/virtuoso

