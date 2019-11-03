FROM ubuntu:disco

RUN \
	sed -i -s 's%archive.ubuntu.com%ftp.tsukuba.wide.ad.jp/Linux%g' /etc/apt/sources.list && \
	sed -i -s 's%security.ubuntu.com%ftp.tsukuba.wide.ad.jp/Linux%g' /etc/apt/sources.list && \
	apt-get update && apt-get upgrade -y && apt-get install -y gnupg2 python3-pip && \
	pip3 install requests

RUN \
	echo 'deb http://ppa.launchpad.net/micahflee/ppa/ubuntu disco main' > /etc/apt/sources.list.d/micahflee-ubuntu-ppa-disco.list && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EF33F027E9E4869F46F77E34E72F77D7D158F33 && \
	apt-get update && apt-get install -y onionshare

ENTRYPOINT ["/usr/bin/onionshare", "/tmp"]
