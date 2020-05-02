k:
cd   \workspaces\workspace32_2013_stuff\work_ee_BCDS

call \bat\env

del bcds.jar 
del bcds_client.jar  
del transaction.log

rmdir /S /Q classes

rmdir /S /Q tclasses

set CLASSPATH=%JBOSS_HOME%\client\jbossall-client.jar

md classes

javac  -d ./classes  ./src/*.java

jar cvf bcds.jar -C ./classes .
jar cvf bcds_client.jar  -C ./classes ch/jmildner/interfaces  

copy bcds.jar %JBOSS_HOME%\server\default\deploy

pause


