#!/usr/bin/env python

apt-get -y install gnupg1 apt-transport-https dirmngr
export INSTALL_KEY=379CE192D401AB61
export DEB_DISTRO=$(lsb_release -sc)
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY
echo "deb https://ookla.bintray.com/debian ${DEB_DISTRO} main" | tee  /etc/apt/sources.list.d/speedtest.list
apt-get update
apt-get -y install speedtest
