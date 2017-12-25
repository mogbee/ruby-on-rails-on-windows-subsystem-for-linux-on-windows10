:: This program is written by mogbee
:: RoRoWSLoW10 Step3

@echo off

echo Started to install VcXsrv.

:: Register profile
bash -c "if ! grep 'export DISPLAY by RoRoWSLoW10' /root/.profile; then echo '' >> /root/.profile; echo '# export DISPLAY by RoRoWSLoW10' >> /root/.profile; echo 'export DISPLAY=localhost:0.0' >> /root/.profile; fi"

:: Install VcXsrv
powershell Stop-Process -Name VcXsrv -ErrorAction SilentlyContinue
vcxsrv-64.1.19.5.0.installer.exe --silent

echo Finished to install VcXsrv.
pause
