#!/bin/sh

CONFFILE=/var/www/html/config.ini

# set Virtuoso password in ontowikis config.ini
sed -i "s/\(store.virtuoso.password\s*\)= \"dba\"$/\1= \"${VIRTUOSO_ENV_DBA_PASSWORD}\"/" ${CONFFILE}

echo "OntoWiki is ready to set sail!"
cat /ow-docker.fig
echo ""
echo "following log:"

OWLOG_DIR="/var/www/html/logs/"
mkdir -p $OWLOG_DIR
chmod a+w $OWLOG_DIR

tail -f $OWLOG
