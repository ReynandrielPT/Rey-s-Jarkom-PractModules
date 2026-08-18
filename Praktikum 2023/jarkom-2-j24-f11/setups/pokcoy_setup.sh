echo "nameserver 10.72.1.4" > /etc/resolv.conf

cp /root/named.conf.local /etc/bind/named.conf.local

mkdir -p /etc/bind/Vitamin

cp /root/vitamin.brokoli.F11.com /etc/bind/Vitamin/vitamin.brokoli.F11.com

cp /root/named.conf.options /etc/bind/named.conf.options 

cp /root/vitamin.brokoli.F11.com /etc/bind/Vitamin/k1/k1.vitamin.brokoli.F11.com

service bind9 restart
