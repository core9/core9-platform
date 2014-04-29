@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Core9 startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and CORE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\Core9.jar;%APP_HOME%\lib\core-1.0.23.jar;%APP_HOME%\lib\module-server-api-1.0.5.jar;%APP_HOME%\lib\module-server-vertx-1.0.4.jar;%APP_HOME%\lib\module-session-manager-1.0.2.jar;%APP_HOME%\lib\module-cache-1.0.2.jar;%APP_HOME%\lib\module-template-engine-closure-1.0.4.jar;%APP_HOME%\lib\module-features-1.0.1.jar;%APP_HOME%\lib\module-git-1.0.4.jar;%APP_HOME%\lib\module-widgets-1.0.2.jar;%APP_HOME%\lib\module-widgets-toolkit-1.0.1.jar;%APP_HOME%\lib\module-database-api-1.0.6.jar;%APP_HOME%\lib\module-database-mongodb-1.0.7.jar;%APP_HOME%\lib\module-static-handler-1.0.4.jar;%APP_HOME%\lib\module-admin-1.0.1.jar;%APP_HOME%\lib\module-admin-dashboard-1.0.2.jar;%APP_HOME%\lib\module-files-manager-1.0.2.jar;%APP_HOME%\lib\org.apache.logging.log4j-1.2.17.jar;%APP_HOME%\lib\classworlds-1.1.jar;%APP_HOME%\lib\core-api-1.0.23.jar;%APP_HOME%\lib\module-database-mongodb-api-1.0.7.jar;%APP_HOME%\lib\module-template-engine-closure-api-1.0.4.jar;%APP_HOME%\lib\vertx-core-2.0.2-final.jar;%APP_HOME%\lib\module-git-api-1.0.4.jar;%APP_HOME%\lib\module-session-manager-api-1.0.2.jar;%APP_HOME%\lib\module-server-vertx-api-1.0.4.jar;%APP_HOME%\lib\org.eclipse.jgit-3.3.0.201403021825-r.jar;%APP_HOME%\lib\jackson-module-jsonSchema-2.3.2.jar;%APP_HOME%\lib\json-smart-2.0-RC3.jar;%APP_HOME%\lib\dozer-5.5.0.jar;%APP_HOME%\lib\module-workflow-1.0.1.jar;%APP_HOME%\lib\rendersnake-1.7.3.jar;%APP_HOME%\lib\module-files-manager-api-1.0.2.jar;%APP_HOME%\lib\guava-15.0.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\mongo-java-driver-2.12.0-rc2.jar;%APP_HOME%\lib\closure-templates-1.0.4.jar;%APP_HOME%\lib\netty-all-4.0.10.Final.jar;%APP_HOME%\lib\hazelcast-2.6.jar;%APP_HOME%\lib\module-cache-api-1.0.2.jar;%APP_HOME%\lib\shiro-core-1.2.2.jar;%APP_HOME%\lib\jsch-0.1.46.jar;%APP_HOME%\lib\JavaEWAH-0.7.9.jar;%APP_HOME%\lib\httpclient-4.1.3.jar;%APP_HOME%\lib\jackson-annotations-2.3.0.jar;%APP_HOME%\lib\asm-1.0-RC3.jar;%APP_HOME%\lib\commons-beanutils-1.9.1.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.5.jar;%APP_HOME%\lib\slf4j-log4j12-1.7.2.jar;%APP_HOME%\lib\module-features-api-1.0.1.jar;%APP_HOME%\lib\guice-3.0.jar;%APP_HOME%\lib\guice-multibindings-3.0.jar;%APP_HOME%\lib\guice-assistedinject-3.0.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\args4j-2.0.16.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\icu4j-4.8.1.1.jar;%APP_HOME%\lib\infinispan-core-6.0.0.Final.jar;%APP_HOME%\lib\httpcore-4.1.4.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\commons-codec-1.4.jar;%APP_HOME%\lib\asm-3.3.1.jar;%APP_HOME%\lib\module-admin-api-1.0.1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\cglib-2.2.1-v20090111.jar;%APP_HOME%\lib\ant-1.7.0.jar;%APP_HOME%\lib\infinispan-commons-6.0.0.Final.jar;%APP_HOME%\lib\jgroups-3.4.1.Final.jar;%APP_HOME%\lib\jboss-transaction-api_1.1_spec-1.0.1.Final.jar;%APP_HOME%\lib\jboss-marshalling-river-1.3.18.GA.jar;%APP_HOME%\lib\jboss-marshalling-1.3.18.GA.jar;%APP_HOME%\lib\jboss-logging-3.1.2.GA.jar;%APP_HOME%\lib\ant-launcher-1.7.0.jar;%APP_HOME%\lib\jackson-databind-2.3.2.jar;%APP_HOME%\lib\jackson-core-2.3.2.jar;%APP_HOME%\lib\commons-lang3-3.2.1.jar;%APP_HOME%\lib\slf4j-api-1.7.5.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar

@rem Execute Core9
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CORE_OPTS%  -classpath "%CLASSPATH%" io.core9.core.boot.BootstrapFramework %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CORE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CORE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
