#!/bin/bash

# add freeswitch public key
wget -O - https://files.freeswitch.org/repo/deb/debian/freeswitch_archive_g0.pub | apt-key add -
# add freeswitch repo
echo "deb http://files.freeswitch.org/repo/deb/freeswitch-1.6/ jessie main" \
      > /etc/apt/sources.list.d/freeswitch.list

apt-get update
apt-get upgrade -y

# install base packages
apt-get install -y git zsh ruby vim ngrep tcpdump

# ruby gem config
echo -e "---\ngem: --no-ri --no-rdoc" > /etc/gemrc

# install ruby rake
gem install rake

# install vim janus plugin
curl -L https://bit.ly/janus-bootstrap | bash

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install freeswitch package
apt-get install -y freeswitch-all freeswitch-mod-v8 freeswitch-mod-shout

# add freeswitch daemon options
echo "DAEMON_OPTS=-conf /freeswitch/config \
-scripts /freeswitch/scripts \
-log /var/log/freeswitch \
-db /var/lib/freeswitch/db \
-run /run/freeswitch" > /etc/default/freeswitch

# restart freeswitch since daemon options have been changed
systemctl restart freeswitch
