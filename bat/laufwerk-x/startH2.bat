
REM -webAllowOthers true

rem -tcp -tcpAllowOthers true ????

CLS
call .\env.bat
x:
cd \
start javaw -cp %H2_HOME%\h2.jar org.h2.tools.Console  -webAllowOthers true -tcpAllowOthers true
