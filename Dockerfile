FROM openlink/virtuoso-opensource-7:7.2.6-r10-g5a27710-alpine
RUN apk add git raptor2
RUN mkdir /home/ontology -p
RUN git clone https://github.com/snikproject/ontology.git /home/ontology
RUN cd /home/ontology && ./combine
RUN head /tmp/snik.ttl
