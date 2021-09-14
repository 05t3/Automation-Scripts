@echo off

if "%RHOST%"==""SET RHOST=localhost

if "%RPORT%"==""SET RPORT= 4444

if "%RFPORT%"==""SET RFPORT= 5555

if "%RFTPORT%"==""SET RFTPORT= 5556

if "%1"== "" (
    echo Simple script to send a file to listener
    exit
)

REM log it

echo Attempting to send file %1 | nc -w 2 %RHOST% %RPORT%

REM send name

for /F %%i in ("%1")do @set BASENAME=%%~nxi

echo %BASENAME% | nc -w 2 %RHOST% %RFPORT%

nc -w 2 %RHOST% %RFTPORT% < %1