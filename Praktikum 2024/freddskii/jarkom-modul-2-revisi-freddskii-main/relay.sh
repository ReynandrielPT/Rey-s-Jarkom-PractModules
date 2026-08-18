# Untuk ironMan
#!/bin/bash

set -e
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install isc-dhcp-relay -y

cat >> /etc/default/isc-dhcp-relay << EOF

SERVERS="10.202.3.2 10.202.4.2"
INTERFACES="eth1 eth2"
OPTIONS=
EOF

echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
service isc-dhcp-relay start

#untuk blackPanther
#!/bin/bash

set -e
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install isc-dhcp-relay -y

cat >> /etc/default/isc-dhcp-relay << EOF

SERVERS="10.202.3.2 10.202.4.2"
INTERFACES="eth1 eth2"
OPTIONS=
EOF

echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
service isc-dhcp-relay start

#untuk blackWidow
#!/bin/bash

set -e
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install isc-dhcp-relay -y

cat >> /etc/default/isc-dhcp-relay << EOF

SERVERS="10.202.3.2 10.202.4.2"
INTERFACES="eth0 eth1 eth2"
OPTIONS=
EOF

echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
service isc-dhcp-relay start

#untuk vision
#!/bin/bash

set -e
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install isc-dhcp-relay -y

cat >> /etc/default/isc-dhcp-relay << EOF

SERVERS="10.202.3.2 10.202.4.2"
INTERFACES="eth0 eth1"
OPTIONS=
EOF

echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
service isc-dhcp-relay start
