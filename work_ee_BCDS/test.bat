k:
set WORK=\workspaces\workspace32_2013_stuff\work_ee_BCDS
cd \workspace_2013_stuff\workBCDS


call \bat\env

set CLASSPATH=./bcds_client.jar;./tclasses;%CLASSPATH%
set CLASSPATH=%JBOSS_HOME%\client\jbossall-client.jar;%CLASSPATH%
set CLASSPATH=%GLASSFISH_HOME%\glassfish\lib\appserv-rt.jar;%CLASSPATH%

md tclasses

javac  -d ./tclasses  ./test/*.java

java  ch.jmildner.test.TestFirst


pause