;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA    vitamin.brokoli.F11.com. root.vitamin.brokoli.F11.com. (
                        2024100111              ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      vitamin.brokoli.F11.com.
@       IN      A       10.72.2.4
www	IN	CNAME	vitamin.brokoli.F11.com.
k1	IN	A	10.72.2.4
