;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA    brokoli.F11.com. root.brokoli.F11.com. (
                        2024100111              ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      brokoli.F11.com.
@       IN      A       10.72.2.4
www	IN	CNAME	brokoli.F11.com.
ns1	IN	A 	10.72.1.3
vitamin IN 	NS	ns1
