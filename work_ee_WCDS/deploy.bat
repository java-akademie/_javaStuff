k:

set WORK=\workspaces\workspace32_2013_stuff\work_ee_WCDS

cd  %WORK%

call \bat\env

del firstWCDS.war

rmdir /S /Q .\firstWCDS\WEB-INF\classes

set CLASSPATH=%CATALINA_HOME%\lib\servlet-api.jar

mkdir .\firstWCDS\WEB-INF\classes

javac  -d firstWCDS/WEB-INF/classes  ./src/*.java

jar cvf firstWCDS.war -C firstWCDS .

copy firstWCDS.war %CATALINA_HOME%\webapps
copy firstWCDS.war %JBOSS_HOME%\server\default\deploy

pause