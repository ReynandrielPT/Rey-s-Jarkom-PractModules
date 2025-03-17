mkdir -p /etc/bind/Jarkom

cp /root/brokoli.F11.com /etc/bind/Jarkom/brokoli.F11.com

cp /root/buncis.F11.com /etc/bind/Jarkom/buncis.F11.com

cp /root/bayam.F11.com /etc/bind/Jarkom/bayam.F11.com

cp /root/2.72.10.in-addr.arpa /etc/bind/Jarkom/2.72.10.in-addr.arpa

cp /root/named.conf.local /etc/bind/named.conf.local

cp /root/named.conf.local /etc/bind/named.conf.local

service bind9 restart
