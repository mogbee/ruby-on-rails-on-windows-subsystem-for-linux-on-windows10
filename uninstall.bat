:: This program is written by mogbee
:: RoRoWSLoW10

@echo off

echo Started to uninstall Ubuntu.

:: Uninstall Ubuntu
lxrun /uninstall /full /y

:: Uninstall VcXsrv
"%ProgramFiles%"\VcXsrv\uninstall.exe --silent

:: finished to uninstall

echo Finished to uninstall.
pause
