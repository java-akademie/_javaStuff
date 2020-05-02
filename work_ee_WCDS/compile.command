#!/bin/bash

cd $JEE_SEMINAR/work

CP=$CATALINA_HOME/lib/servlet-api.jar

javac -cp $CP  -d ./wcds/WEB-INF/classes *.java 
