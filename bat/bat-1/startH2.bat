

CLS
call .\env.bat
cd \
start javaw -cp %LIB%\h2.jar org.h2.tools.Console 
rem -webAllowOthers true -tcpAllowOthers true
