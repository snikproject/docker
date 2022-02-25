FROM tomcat:8-jre8-alpine
#Debug:
#  https://hub.docker.com/_/tomcat/
#  FROM tomcat:8-jre8-alpine

LABEL maintainer "Sebastian Stäubert (sebastian.staeubert@imise.uni-leipzig.de)"
ENV CATALINA_OPTS="-XX:+UseSerialGC"
COPY ontology.war /usr/local/tomcat/webapps/ontology.war

