

call .\env.bat

call %GLASSFISH_HOME%\bin\asadmin.bat stop-database

call %GLASSFISH_HOME%\bin\asadmin.bat stop-domain

pause