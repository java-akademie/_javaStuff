rem Toshiba

rem @echo off

set UTILS=y:\utils

if not "%ANT_HOME%"=="" goto gotAntHome
	set ANT_HOME=%UTILS%\apache-ant-1.7.1
:gotAntHome
echo ANT_HOME=%ANT_HOME%

if not "%JAVA_HOME%"=="" goto gotJavaHome
	set JAVA_HOME=%UTILS%\jdk1.6.0_21
:gotJavaHome
echo JAVA_HOME=%JAVA_HOME%

if not "%GLASSFISH_HOME%"=="" goto gotGlassfishHome
	set GLASSFISH_HOME=%UTILS%\glassfish
:gotGlassfishHome
echo GLASSFISH_HOME=%GLASSFISH_HOME%

set CATALINA_HOME=%UTILS%\apache-tomcat-5.5.29
rem set CATALINA_HOME=%UTILS%\apache-tomcat-6.0.20
echo CATALINA_HOME=%CATALINA_HOME%

set JBOSS_HOME=%UTILS%\jboss-5.1.0.GA
echo JBOSS_HOME=%JBOSS_HOME%

set H2_HOME=%UTILS%\h2
echo H2_HOME=%H2_HOME%


if not "%ECLIPSE_HOME%"=="" goto gotEclipseHome
	set ECLIPSE_HOME=%UTILS%\eclipse-helios
:gotEclipseHome
echo ECLIPSE_HOME=%ECLIPSE_HOME%

set PATH=c:\WINDOWS\system32;
set PATH=%PATH%;%JAVA_HOME%\bin;%ANT_HOME%\bin


