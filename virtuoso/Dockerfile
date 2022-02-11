# update to official image when preloading is documented, see https://github.com/openlink/virtuoso-opensource/issues/995 and https://github.com/openlink/virtuoso-opensource/issues/996
FROM tenforce/virtuoso:latest
WORKDIR /virtuoso
COPY setup.sql .
COPY wrapper.sh .
ENTRYPOINT ["/bin/sh","./wrapper.sh"]
