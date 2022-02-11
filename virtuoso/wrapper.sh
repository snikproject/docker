#/bin/sh

if [ ! -f ./virtuoso.ini ];
then
  mv /virtuoso.ini . 2>/dev/null
fi

if [ ! -f ".setup" ] ;
then
    echo "Start setup"
    chmod +x /virtuoso.sh
    pwd="dba"
    graph="http://localhost:8890/DAV"

    # password seems to not be changed at this time, perform changes using dba
    #if [ "$DBA_PASSWORD" ]; then pwd="$DBA_PASSWORD" ; fi
    if [ "$DEFAULT_GRAPH" ]; then graph="$DEFAULT_GRAPH" ; fi
    echo "$(cat setup.sql)"
    virtuoso-t +wait && isql-v -U dba -P "$pwd" < setup.sql
    kill $(ps aux | grep '[v]irtuoso-t' | awk '{print $2}')
    echo "`date +%Y-%m-%dT%H:%M:%S%:z`" > .setup
fi

/virtuoso.sh
