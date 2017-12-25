:: This program is written by mogbee
:: RoRoWSLoW10 Step1

@echo off

net session >nul 2>&1
if %errorlevel% == 0 (
    echo You are Administrator.
    echo Please enter "Y" when asked to restart.
) else (
    echo You are not Administrator. Please execute bat as Administrator.
    pause
    exit
)

:: enable WSL
powershell Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
