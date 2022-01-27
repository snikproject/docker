FROM tenforce/virtuoso:latest
#COPY --from=rdf /rdf /data/toLoad
ENV DEFAULT_GRAPH=http://hitontology.eu/ontology
#ENV VIRT_Parameters_DirsAllowed="., /usr/local/virtuoso-opensource/share/virtuoso/vad, /virtuoso/data,/rdf"
# Deactivate plugins
# Does not work because of ADD and caching
#RUN ["sed","-i","s|^Load|;Load|","/usr/local/virtuoso-opensource/var/lib/virtuoso/db/virtuoso.ini"]
#WORKDIR /usr/local/virtuoso-opensource/var/lib/virtuoso/db
WORKDIR /virtuoso
COPY setup.sql .
COPY wrapper.sh .
# Virtuoso will automatically load any data in that directory on the first startup
# See https://hub.docker.com/r/tenforce/virtuoso
#CMD ["/usr/local/virtuoso-opensource/var/lib/virtuoso/db/wrapper.sh"]
#ENTRYPOINT ["/usr/local/virtuoso-opensource/var/lib/virtuoso/db/wrapper.sh"]
ENTRYPOINT ["/bin/sh","./wrapper.sh"]
