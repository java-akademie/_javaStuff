
@call .\env.bat

cd %JBOSS_HOME%\bin  

rem -b "0.0.0.0" - zugriff auch von entfernten rechnern moeglich
rem -Djboss.service.binding.set=ports-01 - aundert port von 8080 auf 8180

run.bat -b "0.0.0.0"   
rem-Djboss.service.binding.set=ports-01

