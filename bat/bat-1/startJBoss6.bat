
call .\env.bat
set JBOSS_HOME=%JBOSS_HOME6%
cd %JBOSS_HOME%\bin
rem run.bat -b "0.0.0.0" 
run.bat 

rem -Djboss.service.binding.set=ports-01