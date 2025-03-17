;
; BIND data file for local loopback interface
;
$TTL    43200
@       IN      SOA     bayam.F11.com. root.bayam.F11.com. (
                        2024100111      ; Serial
                           7200         ; Refresh
                           1800         ; Retry
                        1209600         ; Expire
                         43200 )        ; Negative Cache TTL
;
@       IN      NS      bayam.F11.com.
@       IN      A       10.72.2.5
www	IN	CNAME	bayam.F11.com.
