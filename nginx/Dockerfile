# siehe:
# https://hub.docker.com/r/aksw/nginx-ontowiki/~/dockerfile/
# https://gist.github.com/white-gecko/3739707

FROM nginx

LABEL maintainer "Sebastian Stäubert (sebastian.staeubert@imise.uni-leipzig.de)"

RUN apt-get update && apt-get install -y \
    joe

# provide nginx.conf via COPY
# nginx.conf might provided via volume/mount as an alteranive
COPY nginx.conf /etc/nginx/nginx.conf

# generate soft-link according to location in nginx.conf
# klappt leider nicht - link muss z.Z. im Container erstellt werden bzw. chown muss dort ausgeführt werden
# beides ggf. in einen anderen Container (phpserver, ontowiki) auslagern oder über ein entrypoint-Skript lösen
#RUN ln -s /var/www/html /var/www/html/ontowiki
#RUN chown -R www-data:www-data /var/www/html

# Cleanup
RUN apt-get clean && \
    apt-get autoremove -yq && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
