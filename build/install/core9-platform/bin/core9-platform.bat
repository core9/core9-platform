@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  core9-platform startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and CORE_PLATFORM_OPTS to pass JVM options to this script.
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

set CLASSPATH=%APP_HOME%\lib\core9-platform.jar;%APP_HOME%\lib\core-1.0.27.jar;%APP_HOME%\lib\module-hostmanager-1.0.4.jar;%APP_HOME%\lib\module-server-1.0.18.jar;%APP_HOME%\lib\module-server-vertx-1.0.31.jar;%APP_HOME%\lib\module-authentication-1.0.10.jar;%APP_HOME%\lib\module-authentication-standard-1.0.14.jar;%APP_HOME%\lib\module-template-engine-closure-1.0.24.jar;%APP_HOME%\lib\module-features-1.0.13.jar;%APP_HOME%\lib\module-git-1.0.6.jar;%APP_HOME%\lib\module-import-1.0.12.jar;%APP_HOME%\lib\module-task-manager-1.0.4.jar;%APP_HOME%\lib\module-widgets-1.0.62.jar;%APP_HOME%\lib\module-widgets-toolkit-1.0.27.jar;%APP_HOME%\lib\module-database-1.0.24.jar;%APP_HOME%\lib\module-database-mongodb-1.0.33.jar;%APP_HOME%\lib\module-admin-1.0.13.jar;%APP_HOME%\lib\module-admin-dashboard-1.0.8.jar;%APP_HOME%\lib\module-files-manager-1.0.27.jar;%APP_HOME%\lib\module-thumbnails-1.0.18.jar;%APP_HOME%\lib\module-commerce-1.0.20.jar;%APP_HOME%\lib\module-ogone-1.0.8.jar;%APP_HOME%\lib\org.apache.logging.log4j-1.2.17.jar;%APP_HOME%\lib\classworlds-1.1.jar;%APP_HOME%\lib\module-server-api-1.0.18.jar;%APP_HOME%\lib\module-database-mongodb-api-1.0.33.jar;%APP_HOME%\lib\module-database-api-1.0.24.jar;%APP_HOME%\lib\module-template-engine-closure-api-1.0.24.jar;%APP_HOME%\lib\module-hostmanager-api-1.0.4.jar;%APP_HOME%\lib\json-smart-2.0-RC3.jar;%APP_HOME%\lib\vertx-core-2.1.jar;%APP_HOME%\lib\vertx-hazelcast-2.1.jar;%APP_HOME%\lib\shiro-core-1.2.3.jar;%APP_HOME%\lib\module-git-api-1.0.6.jar;%APP_HOME%\lib\org.eclipse.jgit-3.3.0.201403021825-r.jar;%APP_HOME%\lib\module-task-manager-api-1.0.4.jar;%APP_HOME%\lib\dozer-5.5.1.jar;%APP_HOME%\lib\super-csv-2.2.0.jar;%APP_HOME%\lib\quartz-2.2.1.jar;%APP_HOME%\lib\slf4j-log4j12-1.7.6.jar;%APP_HOME%\lib\jackson-module-jsonSchema-2.4.1.jar;%APP_HOME%\lib\module-authentication-api-1.0.10.jar;%APP_HOME%\lib\core-api-1.0.27.jar;%APP_HOME%\lib\mongojack-2.0.0.jar;%APP_HOME%\lib\guava-15.0.jar;%APP_HOME%\lib\module-files-manager-api-1.0.27.jar;%APP_HOME%\lib\thumbnailator-0.4.7.jar;%APP_HOME%\lib\module-import-api-1.0.12.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\rxjava-core-0.19.2.jar;%APP_HOME%\lib\mongo-java-driver-2.12.2.jar;%APP_HOME%\lib\persistence-api-1.0.2.jar;%APP_HOME%\lib\closure-templates-1.0.4.jar;%APP_HOME%\lib\asm-1.0-RC3.jar;%APP_HOME%\lib\netty-all-4.0.19.Final.jar;%APP_HOME%\lib\hazelcast-3.2.1.jar;%APP_HOME%\lib\jsch-0.1.46.jar;%APP_HOME%\lib\JavaEWAH-0.7.9.jar;%APP_HOME%\lib\httpclient-4.1.3.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.5.jar;%APP_HOME%\lib\c3p0-0.9.1.1.jar;%APP_HOME%\lib\jackson-annotations-2.4.0.jar;%APP_HOME%\lib\bson4jackson-2.2.0.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\module-features-api-1.0.13.jar;%APP_HOME%\lib\module-admin-api-1.0.13.jar;%APP_HOME%\lib\guice-3.0.jar;%APP_HOME%\lib\guice-multibindings-3.0.jar;%APP_HOME%\lib\guice-assistedinject-3.0.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\args4j-2.0.16.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\icu4j-4.8.1.1.jar;%APP_HOME%\lib\asm-3.3.1.jar;%APP_HOME%\lib\annotations-1.3.2.jar;%APP_HOME%\lib\httpcore-4.1.4.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\commons-codec-1.4.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\cglib-2.2.1-v20090111.jar;%APP_HOME%\lib\ant-1.7.0.jar;%APP_HOME%\lib\ant-launcher-1.7.0.jar;%APP_HOME%\lib\jackson-databind-2.4.1.1.jar;%APP_HOME%\lib\slf4j-api-1.7.6.jar;%APP_HOME%\lib\commons-beanutils-1.9.1.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\commons-lang3-3.2.1.jar;%APP_HOME%\lib\jackson-core-2.4.1.jar

@rem Execute core9-platform
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CORE_PLATFORM_OPTS%  -classpath "%CLASSPATH%" io.core9.core.boot.BootstrapFramework %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CORE_PLATFORM_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CORE_PLATFORM_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
