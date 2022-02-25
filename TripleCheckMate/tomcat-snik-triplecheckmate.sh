# Docker-Image erzeugen
docker build -t triplecheckmate-snik .

# Daten-Container erzeugen
# Anwendungscontainer erzeugen
docker run \
  --name triplecheckmate-snik \
  -p :8888:8080 \
  -d \
  --restart=on-failure:10 \
  triplecheckmate-snik

docker run \
  --name triplecheckmate-snik \
  -p :8888:8080 \
  -d \
  --restart=always \
  triplecheckmate-snik
