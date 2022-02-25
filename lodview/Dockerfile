FROM maven:3-jdk-8 AS builder
WORKDIR /app
ARG SPARQL_ENDPOINT=https://www.snik.eu/sparql
RUN wget --no-verbose https://github.com/snikproject/lodview/archive/refs/heads/master.zip \
 && unzip -q master.zip \
 && mv lodview-master/* . \
 && sed -i "s|https://www\.snik\.eu/sparql|${SPARQL_ENDPOINT}|" src/main/webapp/WEB-INF/conf.ttl \
 && ls lodview-master \
 && rm -rf lodview-master \
 && rm master.zip
RUN mvn -B -q compile war:war

FROM tomcat:9-jre8-slim
ENV CATALINA_OPTS="-XX:+UseSerialGC"
COPY --from=builder /app/target/lodview.war /usr/local/tomcat/webapps/ontology.war
COPY logging.properties /usr/local/tomcat/conf
EXPOSE 8080
