[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/aRvIU2lf)
| Name           | NRP        | Kelas     |
| ---            | ---        | ----------|
| Ida Bagus Gde Dimas Sutha Maha | 5025241218 | B |



## Put your topology config image here!

<img width="2475" height="1493" alt="image" src="https://github.com/user-attachments/assets/62c3d22f-fe90-4888-ad19-06c1704971ae" />


## Put your GNS3 Project file here!

[`Put file URL here`](https://drive.google.com/drive/folders/1_BahVgvLzHoBS_Sqm3JK89Jx05H3D-aE?usp=drive_link)

<br>

## Soal 1

> Menggunakan metode VLSM, buatlah pembagian subnet untuk masing-masing gedung dengan cara yang seefisien mungkin!

> _Using the VLSM method, create subnets for each building as efficiently as possible!_

**Answer:**

- Screenshot

  <img width="2564" height="509" alt="image" src="https://github.com/user-attachments/assets/d87b7038-90eb-4a13-80e2-5c5e93f9da4f" />




<br>

## Soal 2

> Konfigurasi semua router agar bisa terhubung ke semua jaringan. Gunakan static routing dan uji dengan melakukan ping dari **Budapest** ke **Alekhine** dan dari **Ponziani** ke **Sicilian**!

> _Configure all routers to connect to all networks. Use static routing and perform testing by pinging from **Budapest** to **Alekhine** and from **Ponziani** to **Sicilian**!_

**Answer:**

- Screenshot

### Budapet -> Alekhine
<img width="1051" height="718" alt="image" src="https://github.com/user-attachments/assets/239a6b9b-ab7a-4b8d-8796-56b4eece5969" />

### Alekhine -> Budapest
<img width="1060" height="708" alt="image" src="https://github.com/user-attachments/assets/71a60142-cef3-41ce-8dbc-f2fffbef68e1" />

### Ponziani -> Sicilian
<img width="1049" height="709" alt="image" src="https://github.com/user-attachments/assets/79514a39-d8e5-488c-93b9-20051e3a37e1" />

### Sicilian -> Ponziani
<img width="1060" height="642" alt="image" src="https://github.com/user-attachments/assets/122114aa-7df2-495f-929f-84ceebe730da" />




<br>

## Soal 3

> Berikan seluruh client (**Blackmar-Diemer, Budapest,** dan **Stafford**) IP secara dinamis dari DHCP. Range IP dibebaskan, namun tunjukkan bahwa mereka mendapatkan IP secara dinamis!

> _Assign all clients (**Blackmar-Diemer, Budapest,** and **Stafford**) dynamic IP addresses via DHCP. You may use any IP range you would like, but prove that they receive IP addresses dynamically!_

**Answer:**

- Screenshot

 <img width="947" height="623" alt="image" src="https://github.com/user-attachments/assets/76f38645-1da4-42be-9da7-627a31ab53e9" />
:(((((((((((((((((((( kejadian: saat revisi

- Explanation

BlackMar - Stafford - Budapest

 ```
auto eth0
iface eth0 inet dhcp
 ```

Ponziani

```
subnet 10.150.0.0 netmask 255.255.224.0 {
    range 10.150.0.2 10.150.31.254;
    option routers 10.150.0.1;
    option broadcast-address 10.150.31.255;
    option domain-name-servers 1.1.1.1;
    default-lease-time 300;
    max-lease-time 6900;
}



subnet 10.150.32.0 netmask 255.255.248.0 {
    range 10.150.32.2 10.150.39.254;
    option routers 10.150.32.1;
    option broadcast-address 10.150.39.255;
    option domain-name-servers 1.1.1.1;
    default-lease-time 300;
    max-lease-time 6900;
}



subnet 10.150.41.0 netmask 255.255.255.128 {
    range 10.150.41.102 10.150.41.126;
    option routers 10.150.41.1;
    option broadcast-address 10.150.41.127;
    option domain-name-servers 1.1.1.1;
    default-lease-time 300;
    max-lease-time 6900;
}

subnet 10.150.42.0 netmask 255.255.255.0 {
    range 10.150.42.202 10.150.42.254;
    option routers 10.150.42.1;
    option broadcast-address 10.150.42.255;
    option domain-name-servers 1.1.1.1;
    default-lease-time 300;
    max-lease-time 6900;
}

```

<br>

## Soal 4

> Berikan web server **Slav** dan **Sicilian** IP address yang tetap/fixed dari DHCP. 

> _Assign **Slav** and **Sicilian** web servers fixed IP addresses via DHCP._

**Answer:**



- Explanation

```
host Slav {
    hardware ethernet 02:42:55:42:d9:00;
    fixed-address 10.150.42.222;
}

host Sicilian {
    hardware ethernet 02:42:47:96:d5:00;
    fixed-address 10.150.41.111;
}
```

<br>

## Soal 5

> Buatlah konfigurasi untuk domain:  
**parkov.com** → IP Node **Slav**  
**paskarov.com** → IP Node **Sicilian** 
Pada **DNS Master Caro-Kann.** Tambahkan juga subdomain www untuk kedua domain tersebut.

> _Configure the domains:  
**parkov.com** → **Slav** Node IP  
**paskarov.com** → **Sicilian** Node IP  
On the **Caro-Kann DNS Master,** then add the www subdomain for both domains._

**Answer:**



- Explanation

```
zone "parkov.com" {
  type master;
  file "/etc/bind/parkov/parkov.com";
};

zone "paskarov.com" {
	type master;
	file "/etc/bind/paskarov/paskarov.com";
};
```
```
mkdir /etc/bind/parkov
mkdir /etc/bind/paskarov
```

```
$TTL 604800
@   IN  SOA parkov.com. root.parkov.com. (
        2025102901 ; Serial
        604800      ; Refresh
        86400       ; Retry
        2419200     ; Expire
        604800 )    ; Negative Cache TTL
;
@       IN  NS      parkov.com.
@       IN  A       10.150.42.222
www  	IN  CNAME   parkov.com.
@       IN  AAAA    ::1
```

```
$TTL 604800
@   IN  SOA paskarov.com. root.paskarov.com. (
        2025102901 ; Serial
        604800      ; Refresh
        86400       ; Retry
        2419200     ; Expire
        604800 )    ; Negative Cache TTL
;
@       IN  NS      paskarov.com.
@       IN  A      10.150.41.111
www  	IN  CNAME   paskarov.com.
@       IN  AAAA    ::1
```

<br>

## Soal 6

> Konfigurasikan juga **Alekhine** sebagai **DNS Slave** yang bekerja untuk membantu **Caro-Kann.** Lakukan pengujian dengan **mematikan Caro-Kann** lalu coba ping ke domain dan subdomain tersebut (pilih salah satu saja).

> _Configure **Alekhine** as a **DNS Slave** to assist **Caro-Kann**. Perform testing by **disabling Caro-Kann** and then pinging the domain and subdomain (choose only one)._

**Answer:**



- Explanation

 ```
zone "parkov.com" {
  type master;
  also-notify { 10.150.40.146; }; 
  	allow-transfer { 10.150.40.146; }; 
  file "/etc/bind/parkov/parkov.com";
  };
  
  zone "paskarov.com" {
  	type master;
  	also-notify { 10.150.40.146; }; 
      	allow-transfer { 10.150.40.146; }; 
  	file "/etc/bind/paskarov/paskarov.com";
  };
```

```
 zone "parkov.com" {
     type slave;
     masters { 10.150.40.157; }; 
     file "/var/lib/bind/parkov.com";
 };
 
 zone "paskarov.com" {
     type slave;
     masters { 10.150.40.157; }; 
     file "/var/lib/bind/paskarov.com";
 };
```

<br>

## Soal 7

> Konfigurasikan **Sicilian** agar berfungsi sebagai **web server nginx** yang akan menyajikan [halaman berikut](https://drive.google.com/file/d/1eX0ZjRKprx8T34XFAssrpc7ZE1j6Jv0j/view). Konfigurasikan juga agar **Sicilian** bisa menyimpan custom access log ke file **/tmp/access.log** dan error log ke file **/tmp/error.log.**

> _Configure **Sicilian** to function as an **nginx web server**that will serve [this page](https://drive.google.com/file/d/1eX0ZjRKprx8T34XFAssrpc7ZE1j6Jv0j/view). Also, configure **Sicilian** to save custom access logs to **/tmp/access.log** and error logs to **/tmp/error.log.**_

**Answer:**



- Explanation

<p>Kita lakukan instalasi nginx pada, sicilian dan memasukan index.html, setelahnya kita uji coba dengan lynx atau curl</p>

<br>

## Soal 8

> Buatlah custom access log ke file **/tmp/access.log.** Untuk keperluan logging, gunakan format log seperti di bawah:
> - Tanggal dan waktu akses dalam format standar log.
> - Nama node yang sedang diakses.
> - Alamat IP klien yang mengakses website.
> - Metode HTTP dan URI yang diakses oleh klien.
> - Status respons HTTP yang diberikan oleh server.
> - Jumlah byte yang dikirimkan dalam respons.
> - Waktu yang dihabiskan oleh server untuk menangani permintaan.> 
> - Contoh format log yang sesuai:  
[01/Oct/2024:11:30:45 +0000] Jarkom Node Sicilian Access from 192.168.1.15 using method "GET /resep/bayam HTTP/1.1" returned status 200 with 2567 bytes sent in 0.038 seconds

> _Webserver: Create a custom access log to the file **/tmp/access.log.** For logging purposes, use the log format shown below:_
> - _The date and time of access in standard log format._
> - _The name of the node being accessed._
> - _The IP address of the client accessing the website._
> - _The HTTP method and URI accessed by the client._
> - _The HTTP response status returned by the server._
> - _The number of bytes sent in the response._
> - _The time spent by the server processing the request._
> - _Example of appropriate log format:  
[01/Oct/2024:11:30:45 +0000] Jarkom Node Sicilian Access from 192.168.1.15 using method "GET /resep/bayam HTTP/1.1" returned status 200 with 2567 bytes sent in 0.038 seconds_

**Answer:**



- Explanation

```
  	server {
   listen 80;
   server_name paskarov.com www.paskarov.com;
 
   root /var/www/html;
   index index.html;
 
   access_log /tmp/access.log custom_access_log;
   error_log  /tmp/error.log;
 }
```

```
 	server {
 	
 	
 	g_format custom_access_log '[$time_local] Jarkom Node Sicilian '
 								 'Access from $remote_addr using method "$request" '
 								 'returned status $status with $body_bytes_sent bytes 
 
 	Konfigurasi lain
 	}
```

<br>

## Soal 9

> Konfigurasikan juga **Slav** agar berfungsi sebagai **web server nginx** yang menyajikan [halaman berikut](https://drive.google.com/file/d/1h8ik1Zcubntp0dvHt9NHYqSZLSTG6FuZ/view) dan **hanya** bisa diakses melalui port **8000** dan **8888.**

> _Configure **Slav** to function as an **nginx web server** that serves [this page](https://drive.google.com/file/d/1h8ik1Zcubntp0dvHt9NHYqSZLSTG6FuZ/view?usp=drive_link) and is **only** accessible via ports **8000** and **8888.**_

**Answer:**



- Explanation

```
nano /var/www/html/index.html
server {
listen 8080;
listen 8000;
server_name parkov.com www.parkov.com;

root /var/www/html;
index index.html;
}

server {
  
  listen 8000 default_server;
  listen [::]:8000 default_server;
  
  listen 8080 default_server;
  listen [::]:8080 default_server;
...Konfigurasi lain
}
```

<br>

## Soal 10

> Untuk memudahkan akses, buatlah satu domain lagi dengan nama **openings.com** yang mengarah ke **Petrov.** Lalu, konfigurasikan juga **Petrov** sebagai **Reverse Proxy** yang akan melakukan forward request ke server yang sesuai berdasarkan URL profile yang diminta oleh klien dengan ketentuan sebagai berikut:
> - Request untuk “openings.com/**sicilian**” harus dialihkan ke web server **Sicilian.**
> - Request untuk “openings.com/**slav**” harus dialihkan ke web server **Slav.**

> _To facilitate access, create another domain with the name **openings.com** that points to **Petrov.** Then, configure **Petrov** as a **Reverse Proxy** that will forward requests to the appropriate server based on the profile URL requested by the client with the following conditions:_
> - _Requests for “openings.com/**sicilian**” must be forwarded to web server **Sicilian.**_
> - _Request for “openings.com/**slav**” must be forwarded to web server **Slav.**_

**Answer:**



- Explanation

```
nano /etc/bind/paskarov/paskarov.com
nano /etc/bind/parkov/parkov.com

openings.com	IN	A 10.150.40.138

nano /etc/nginx/sites-available/openings.com

 listen 80;
server_name openings.com;

# Redirect tanpa trailing slash (opsional, biar konsisten)
location = /sicilian { return 301 /sicilian/; }
location = /slav     { return 301 /slav/; }

location /sicilian/ {
    proxy_pass http://10.150.41.111/;
}

location /slav/ {
    proxy_pass http://10.150.42.222:8000/;
}
}
```

<br>

## Soal 11

> Tambahkan juga konfigurasi agar request untuk “openings.com/**random**” akan mengalihkan request ke webserver **Sicilian** dan **Slav** dengan algoritma _round-robin_.

> _Additionally, configure requests for "openings.com/**random**" to be redirected to the **Sicilian** and **Slav** web servers using a round-robin algorithm._

**Answer:**



- Explanation

 ```
  upstream openings_pool {
      server 10.150.41.111:80;     
      server 10.150.42.222:8000;
  }
  
  server {
    listen 80;
    server_name openings.com www.openings.com;
  
    location = /sicilian { return 301 /sicilian/; }
    location = /slav     { return 301 /slav/; }
  
    location /sicilian/ { proxy_pass http://10.150.41.111/; }
    location /slav/     { proxy_pass http://10.150.42.222:8000/; }
  
    location /random/ {
        proxy_pass http://openings_pool/; 
    }
  }

curl -i -H "Host: openings.com" http://10.150.40.138/random/
```

<br>

## Soal 12

> Anatoly Parkov berencana untuk melakukan ekspansi secara besar-besaran. Maka dari itu, hapus seluruh konfigurasi Static Routing dan ubah agar seluruh router menggunakan Dynamic Routing. Gunakan protokol RIP!

> _Anatoly Parkov plans to perform a great expansion. Therefore, remove all Static Routing configurations and configure all routers to use Dynamic Routing. Use the RIP protocol!_

**Answer:**



- Explanation


### Smith-Morra

```
network 10.150.32.0/21
network 10.150.0.0/19
network 10.150.40.0/30
```

### Fianchetto

```
network 10.150.40.0/30
network 10.150.40.128/29
```

### Lucena

```
network 10.150.40.64/26
network 10.150.40.128/29
```

### Zwischenzug

```
network 10.150.40.128/29
network 10.150.40.136/29
```

### Zugzwang

```
network 10.150.40.136/29
network 10.150.41.0/25
network 10.150.40.144/28
network 10.150.42.0/24
```

<br>

## Soal 13

> Untuk meningkatkan keamanan, konfigurasikan firewall **Smith-Morra** untuk melakukan pembatasan koneksi SSH ke server DNS. Drop semua packet SSH yang berasal dari seluruh client yang memiliki tujuan ke **Caro-Kann** atau **Alekhine.**

> _To increase security, configure the **Smith-Morra** firewall to restrict SSH connections to the **DNS server.** Drop all SSH packets from all clients destined for **Caro-Kann** or **Alekhine.**_

**Answer:**



- Explanation

```
  iptables -A FORWARD -s 10.150.32.0/21 -d 10.150.40.157 -p tcp --dport 22 -j DROP
iptables -A FORWARD -s 10.150.0.0/19 -d 10.150.40.157 -p tcp --dport 22 -j DROP
 iptables -A FORWARD -s 10.150.32.0/21 -d 10.150.40.146 -p tcp --dport 22 -j DROP
iptables -A FORWARD -s 10.150.0.0/19 -d 10.150.40.146 -p tcp --dport 22 -j DROP
  ```

<br>

## Soal 14

> Nampaknya, web server juga manusia sehingga hanya ingin bekerja di hari kerja. Maka dari itu, semua client hanya bisa mengakses **Sicilian** dan **Slav** pada hari Senin-Jumat pada pukul 09:00-17:00.

> _Apparently, web servers are humans too, so they only want to work on weekdays. Therefore, all clients can only access **Sicilian** and **Slav** on Monday through Friday, 9:00 AM to 5:00 PM._

**Answer:**



- Explanation

```

 tables -A FORWARD -p tcp -s 10.150.0.0/19 -d 10.150.41.111 --dport 80  -m time --timestart 09:00 --timestop 17:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
iptables -A FORWARD -p tcp -s 10.150.32.0/21 -d 10.150.41.111 --dport 443 -m time --timestart 09:00 --timestop 17:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
 iptables -A FORWARD -p tcp -s 10.150.0.0/19 -d 10.150.41.111 --dport 443 -m time --timestart 09:00 --timestop 17:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
  iptables -A FORWARD -p tcp -s 10.150.32.0/21 -d 10.150.41.111 --dport 80  -m time --timestart 09:00 --timestop 17:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
  iptables -A FORWARD -p tcp -s 10.150.32.0/21 -d 10.150.42.222 --dport 80  -m time --timestart 09:00 --timestop 17:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
iptables -A FORWARD -p tcp -s 10.150.0.0/19 -d 10.150.42.222 --dport 443 -m time --timestart 09:00 --timestop 17:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
 iptables -A FORWARD -p tcp -s 10.150.0.0/19 -d 10.150.42.222 --dport 80  -m time --timestart 09:00 --timestop 17:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
 iptables -A FORWARD -p tcp -s 10.150.32.0/21 -d 10.150.42.222 --dport 443 -m time --timestart 09:00 --timestop 17:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
 iptables -A FORWARD -p tcp -s 10.150.0.0/19 -d 10.150.41.111 -m multiport --dports 80,443 -j DROP
 iptables -A FORWARD -p tcp -s 10.150.32.0/21 -d 10.150.41.111 -m multiport --dports 80,443 -j DROP
 iptables -A FORWARD -p tcp -s 10.150.0.0/19 -d 10.150.42.222 -m multiport --dports 80,443 -j DROP
 iptables -A FORWARD -p tcp -s 10.150.32.0/21 -d 10.150.42.222 -m multiport --dports 80,443 -j DROP
```

<br>

## Soal 15

> Terakhir, Gerry Paskarov berpesan untuk selalu melakukan logging, sehingga konfigurasikan fitur logging untuk melakukan log terhadap seluruh paket yang di-DROP pada firewall **Smith-Morra.**
> _Finally, Gerry Paskarov advises to always perform logging, so configure a logging feature to log all packets dropped on the **Smith-Morra** firewall._

**Answer:**

- Screenshot

  `Put your screenshot in here`

- Explanation

  `Put your explanation in here`

<br>
  
## Problems

## Revisions (if any)
