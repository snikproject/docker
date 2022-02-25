ToDo:
Durch die Weiterleitung nach /ontowiki ist es notwendig, dass im Container phpserve unter /var/www/html ein symbolischer Link mit Namen "ontowiki" (das ist der Name der Weiterleitung) angelegt wird:
cd /var/www/html
ln -s . ontowiki

Es müsste noch folgendes getan werden.
  * Dockerfile mit "From ...phpserver"
  * entrypoint-Script, das den Link setzt

