:: This program is written by mogbee
:: RoRoWSLoW10

@echo off

:: Start VcXsrv
powershell Stop-Process -Name VcXsrv -ErrorAction SilentlyContinue
start "" "%ProgramFiles%"\VcXsrv\vcxsrv.exe :0 -ac -terminate -lesspointer -multiwindow -clipboard -wgl

:: Start WSL
start /min %windir%\system32\wsl.exe
bash -c "export DISPLAY=localhost:0.0; subl ./sample"

:: Start Ruby on Rails
echo Start Rails server
bash -c "cd sample; bundle install --path .bundle; bundle exec rails server"
