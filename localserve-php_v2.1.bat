@ECHO OFF
:: v2.0
:: to execute as expected, requires php > 5.4

:start
set choice=
set /p choice= Open browser to view served website? [N]: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='Y' goto yes
if '%choice%'=='y' goto yes
if '%choice%'=='N' goto no
IF '%choice%'=='n' goto no
if '%choice%'=='' goto no
echo "%choice%" is not valid
echo.
goto start

:no
echo Skipped...
cls
GOTO startServer

:yes
echo Opening browser...
start "" http://localhost:8000

:startServer
ECHO starting local server at
ECHO %cd%
ECHO with php (localhost:8000)
php -S localhost:8000