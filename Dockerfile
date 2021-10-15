FROM openlink/virtuoso-opensource-7:7.2.6-r10-g5a27710-alpine
RUN apk add git raptor2
RUN git clone https://github.com/snikproject/ontology.git /ontology
RUN cd /ontology && ./combine
RUN find /database
# allow virtuoso to access the /ontology directory in container
RUN sed -i '/^DirsAllowed\s*=s/ s_\s*$_, /ontology_' /opt/virtuoso-opensource/database/virtuoso.ini
#RUN \
#	export $GRAPH = "http://www.snik.eu/ontology" \\
#	&& isql PROMPT=OFF VERBOSE=OFF BANNER=OFF <<-EOF \
#		ld_dir_all('/ontology', '*.*', '$GRAPH'); \
#		SELECT 'importing this file / these files:'; \
#		SELECT ll_file FROM DB.DBA.LOAD_LIST WHERE ll_state = 0; \
#		SELECT 'starting import', CURRENT_TIMESTAMP(); \
#		rdf_loader_run(); \
#		checkpoint; \
#		commit work; \
#		checkpoint; \
#		SELECT 'import finished', CURRENT_TIMESTAMP(); \
#		SELECT 'graph $GRAPH now contains n triples:'; \
#		sparql SELECT COUNT(*) as ?c { GRAPH <$2> {?s ?p ?o.} }; \
#	EOF \
#	errors=$(isql-vt BANNER=OFF VERBOSE=OFF 'EXEC=SELECT * FROM DB.DBA.LOAD_LIST WHERE ll_error IS NOT NULL;') \
#	if [[ -n $errors ]] ; then \
#		retval=3 \
#		echo "ERROR: there was at least one error during the import:" >&2 \
#		echo "$errors" >&2 \
#	fi

RUN head /tmp/snik.ttl
