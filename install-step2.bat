:: This program is written by mogbee
:: RoRoWSLoW10 Step2

@echo off

echo Started to install Ubuntu, Editor and Ruby on Rails.

:: Install Ubuntu
lxrun /install /y

echo Started to initial setup Ubuntu.

:: Update system
bash -c "apt-get update"
bash -c "apt-get install -y gcc make libreadline-dev xbase-clients libgtk2.0-0 libgdk-pixbuf2.0-0 libfontconfig1 libxrender1 libx11-6 libglib2.0-0 libxft2 libfreetype6 libc6 zlib1g libpng12-0 libstdc++6-4.8-dbg-arm64-cross libgcc1 autoconf"

:: Install ruby
bash -c "apt-get install -y ruby ruby-dev nodejs"
bash -c "gem install bundler"

:: Install mysql
bash -c "apt-get install -y debconf-utils"
bash -c "echo 'mysql-server mysql-server/root_password password admin' | debconf-set-selections"
bash -c "echo 'mysql-server mysql-server/root_password_again password admin' | debconf-set-selections"
bash -c "apt-get install -y mysql-server libmysqlclient-dev"
bash -c "/etc/init.d/mysql start;mysql -uroot -padmin -e \"grant all privileges on *.* to root@localhost identified by ''\""

:: Install sublime
bash -c "wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -"
bash -c "apt-get install -y apt-transport-https"
bash -c "echo 'deb https://download.sublimetext.com/ apt/stable/' | tee /etc/apt/sources.list.d/sublime-text.list"
bash -c "apt-get update"
bash -c "apt-get install -y sublime-text"

:: Register profile
bash -c "if ! grep 'start mysql by RoRoWSLoW10' /root/.profile; then echo '' >> /root/.profile; echo '# start mysql by RoRoWSLoW10' >> /root/.profile; echo '( if [ ! \$(pgrep mysqld_safe) ]; then /etc/init.d/mysql start; fi ) &' >> /root/.profile; fi"
bash -c "if ! grep 'start sublime by RoRoWSLoW10' /root/.profile; then echo '' >> /root/.profile; echo '# start sublime by RoRoWSLoW10' >> /root/.profile; echo 'echo \"Do not close this window while open Sublime Text.\"' >> /root/.profile; fi"
bash -c "subl ./sample"
bash -c "cd /root/.config/sublime-text-3/Installed\ Packages; wget https://packagecontrol.io/Package\ Control.sublime-package"
bash -c "git clone https://github.com/Wramberg/TerminalView.git /root/.config/sublime-text-3/Packages/TerminalView"

echo Finished to configure server.
pause
