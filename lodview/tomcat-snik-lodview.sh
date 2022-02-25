# GIT-Repository aktualisieren:
cd snik-lodview
git pull

# war-File erzeugen
apt-get install maven
mvn package

# Container-Image erzeugen
docker build -t lodview-snik .

# Daten-Container erzeugen -> nicht erforderlich

# Anwendungscontainer erzeugen (manuell)
## Container zum Testen
docker run \
  --rm
  --name lodview-snik \
  -p :8889:8080 \
#  -d \
#  --restart=on-failure:10 \
  lodview-snik

## Container mit autostart
docker run \
  --name lodview-snik \
  -p :8889:8080 \
  -d \
  --restart=always \
  lodview-snik


# Anwendungscontainer erzuegen (docker-compose)
docker-compose ps
docker-compose stop lodview
docker-compose rm lodview
docker-compose build lodview
docker-compose create lodview
docker-compose start lodview

