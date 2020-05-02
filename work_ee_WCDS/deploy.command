#!/bin/bash

cd $JEE_SEMINAR/work

jar cvf wcds.war -C wcds .

#rm -r $CATALINA_HOME/webapps/wcds
rm $CATALINA_HOME/webapps/wcds.war
 
mv wcds.war $CATALINA_HOME/webapps
echo vor cp
cp -R wcds  $CATALINA_HOME/webapps/wcds

 
