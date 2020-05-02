@echo .
@echo .
@echo .
@echo .   ist der db-server gestartet
@echo .
@echo .
@echo .
rem pause


call .\env.bat



rem %JBOSS_HOME%\bin\wsconsume.bat
%JBOSS_HOME%\bin\standalone.bat
rem -b 0.0.0.0


rem %JBOSS_HOME%\bin\domain.bat


