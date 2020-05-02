

@call .\env.bat

x:

cd %JBOSS_HOME%\bin
run.bat -b "0.0.0.0"   

rem -Djboss.service.binding.set=ports-01

