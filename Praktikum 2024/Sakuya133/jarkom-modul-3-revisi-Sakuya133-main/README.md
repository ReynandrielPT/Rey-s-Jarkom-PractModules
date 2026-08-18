| Name           | NRP        | Kelas     |
| ---            | ---        | ----------|
| Ida Bagus Gde Dimas Sutha Maha | 5025241218 | B |



## Put your topology config image here!

<img width="1200" height="768" alt="image" src="https://github.com/user-attachments/assets/332df6c1-180e-40aa-837b-b9ff3d49cc9c" />


## Put your GNS3 Project file here!

https://drive.google.com/drive/folders/1t2VsE122agSiffHNZlCXivqLJtEvia_c

<br>

## Soal 1

> Setup Topo

> _Document the results of the subnet grouping that has been created._

**Answer:**

- Screenshot

<img width="1036" height="639" alt="image" src="https://github.com/user-attachments/assets/1eedf749-b374-4bbc-ba4a-e28cee0b295f" />



- Explanation

 <p>Saya mengikuti pembagian subnet yang diberikan pada tugas di docs, dari kiri ke kanan 2-5</p>

<br>

## Soal 2

> Buatlah konfigurasi untuk domain 
> **lune33.com** → ke IP node Lune , 
> **sciel33.com** → ke IP node Sciel ,
> **gustave33.com** → ke IP node Gustave 
> pada DNS Master Renoir. Kemudian konfigurasikan node Verso sebagai DNS Slave yang bekerja untuk DNS Master Renoir.

> _Dns Configuration , on  the DNS Master (Renoir)_
> _lune33.com → IP of node Lune ,_
> _sciel33.com → IP of node Sciel ,_
> _gustave33.com → IP of node Gustave_
> _Configure Verso as the DNS Slave that works with DNS Master Renoir._

**Answer:**

<p>Pertama kita setting pada node dns master yaitu renoir</p>

### Renoir
### /etc/bind/named.conf.local
```
apt-get install bind9 -y
nano /etc/bind/named.conf.local

zone "lune33.com" {
    type master;
    notify yes;
    also-notify { 10.150.3.3; }; 
    allow-transfer { 10.150.3.3; }; 
    file "/etc/bind/zones/lune33.com";
};

zone "sciel33.com" {
    type master;
    notify yes;
    also-notify { 10.150.3.3; }; 
    allow-transfer { 10.150.3.3; }; 
    file "/etc/bind/zones/sciel33.com";
};

zone "gustave33.com" {
    type master;
    notify yes;
    also-notify { 10.150.3.3; }; 
    allow-transfer { 10.150.3.3; }; 
    file "/etc/bind/zones/gustave33.com";
};
```
<p>Jangan lupa untuk isi also-notify dan transfer isi dengan ip dari dns slave, untuk konfigurasi dns slave nantinya</p>

```
mkdir /etc/bind/zones
```
<p>Kita buat direktori untuk menampung domain</p>

### /etc/bind/zones/lune33.com

```
# lune33.com
$TTL    604800
@       IN      SOA     lune33.com. root.lune33.com. (
                        2025103001 ; Serial
                        604800     ; Refresh
                        86400      ; Retry
                        2419200    ; Expire
                        604800 )   ; Negative Cache TTL
;
@       IN      NS      renoir.lune33.com.
renoir  IN      A       10.150.3.2
@       IN      A       10.150.2.2
www     IN      CNAME   @
```
### /etc/bind/zones/sciel33.com

```
# sciel33.com
$TTL    604800
@       IN      SOA     sciel33.com. root.sciel33.com. (
                        2025103001 ; Serial
                        604800     ; Refresh
                        86400      ; Retry
                        2419200    ; Expire
                        604800 )   ; Negative Cache TTL
;
@       IN      NS      renoir.sciel33.com.
renoir  IN      A       10.150.3.2
@       IN      A       10.150.2.3
www     IN      CNAME   @
```
### /etc/bind/zones/gustave33.com

```
# gustave33.com
$TTL    604800
@       IN      SOA     gustave33.com. root.gustave33.com. (
                        2025103001 ; Serial
                        604800     ; Refresh
                        86400      ; Retry
                        2419200    ; Expire
                        604800 )   ; Negative Cache TTL
;
@       IN      NS      renoir.gustave33.com.
renoir  IN      A       10.150.3.2
@       IN      A       10.150.2.4
www     IN      CNAME   @
```

<p>Kita setting bind pada setiap domain, jika sudah kita restart dns master</p>

```
service bind9 restart
```

<p>Selanjutnya kita setting dns slave</p>

### Verso
### /etc/bind/named.conf.local

```
zone "lune33.com" {
    type slave;
    masters { 10.150.3.2; }; 
    file "/var/lib/bind/lune33.com";
};

zone "sciel33.com" {
    type slave;
    masters { 10.150.3.2; }; 
    file "/var/lib/bind/sciel33.com";
};

zone "gustave33.com" {
    type slave;
    masters { 10.150.3.2; }; 
    file "/var/lib/bind/gustave33.com";
};
```

```
service bind9 restart
```


### DNS Esquie
<img width="598" height="193" alt="image" src="https://github.com/user-attachments/assets/92dd3322-adae-4258-bb9d-4db32a0f0592" />
<p> Kita set dns client esquie dengan ip dari verso, karena dari soal diminta menjadikan verso dns slave dari renoir</p>

### ping lune33.com
<img width="655" height="172" alt="image" src="https://github.com/user-attachments/assets/39320e0d-0bb5-4506-84d8-87c64f2ae21b" />

### ping sciel33.com
<img width="627" height="167" alt="image" src="https://github.com/user-attachments/assets/b1caa71e-08ef-437f-987a-1e6e87f8d2ff" />

### ping gustave33.com
<img width="661" height="190" alt="image" src="https://github.com/user-attachments/assets/105f46e1-d589-436d-af52-ee8d9b795efd" />

<p>Kita bisa lihat dari client bisa melakukan ping pada lune33.com, sciel33.com, dan gustave33.com, dengan dns slave</p>



<br>

## Soal 3

> Tambahkan subdomain alias berupa exp.lune33.com yang mengarah ke alamat lune33.com dan exp.sciel33.com yang mengarah ke alamat sciel33.com (HINT: CNAME). Selain itu, tambahkan konfigurasi untuk melakukan reverse DNS lookup untuk domain gustave33.com

> _Subdomain Configuration,_ 
> _Add alias subdomains (HINT: CNAME)._
> _exp.lune33.com → alias to lune33.com_
> _exp.sciel33.com → alias to sciel33.com_
> _Also, configure reverse DNS lookup for the domain gustave33.com._

**Answer:**


### nano /etc/bind/zones/lune33.com
```
$TTL    604800
@       IN      SOA     lune33.com. root.lune33.com. (
                        2025103002 ; Serial (naikkan!)
                        604800     ; Refresh
                        86400      ; Retry
                        2419200    ; Expire
                        604800 )   ; Negative Cache TTL
;
@       IN      NS      renoir.lune33.com.
renoir  IN      A       10.150.3.2
@       IN      A       10.150.2.2
www     IN      CNAME   @
exp     IN      CNAME   lune33.com.
```

### nano /etc/bind/zones/sciel33.com

```
$TTL    604800
@       IN      SOA     sciel33.com. root.sciel33.com. (
                        2025103002 ; Serial (naikkan!)
                        604800
                        86400
                        2419200
                        604800 )
;
@       IN      NS      renoir.sciel33.com.
renoir  IN      A       10.150.3.2
@       IN      A       10.150.2.3
www     IN      CNAME   @
exp     IN      CNAME   sciel33.com.
```
<p>Kita setting configurasi domain dari lune dan sciel, agar menghasilkan subdomain exp yang mengarah ke main domain masing-masing </p>

### nano /etc/bind/named.conf.local 

```
zone "2.150.10.in-addr.arpa" {
    type master;
    file "/etc/bind/zones/2.150.10.in-addr.arpa";
    allow-transfer { 10.150.3.3; };
};
```

<p>Kita tambahkan konfigurasi untuk reverse dns pada node renoir dan verso</p>

### nano /etc/bind/zones/2.150.10.in-addr.arpa

```
$TTL    604800
@       IN      SOA     gustave33.com. root.gustave33.com. (
                        2025103001 ; Serial
                        604800     ; Refresh
                        86400      ; Retry
                        2419200    ; Expire
                        604800 )   ; Negative Cache TTL
;
@       IN      NS      renoir.gustave33.com.
renoir  IN      A       10.150.3.2
4       IN      PTR     gustave33.com.
```

<p>Tambahkan juga konfigurasi untuk domain reverse dnsnya</p>

### ping exp.lune33.com
<img width="661" height="216" alt="image" src="https://github.com/user-attachments/assets/6df88a06-3a26-44bd-a130-3ebe60ed94a0" />

### ping exp.sciel33.com
<img width="708" height="166" alt="image" src="https://github.com/user-attachments/assets/7d33910a-a186-44d7-a28b-d1d2ec012522" />

### reverse dns gustave33.com
<img width="575" height="89" alt="image" src="https://github.com/user-attachments/assets/5eeba609-b19b-4fbe-8a45-5a2edc871245" />

<p>Disini kita bisa lihat subdomain exp lune dan sciel bisa di ping dan mengarahkan ke main domain masing-masing, dan reverse domain gustave33.com juga sudah bekerja dan mengarahkan kepada domain gustave33.com</p>
<br>

## Soal 4

> Buatlah subdomain berupa expedition.gustave33.com dan delegasikan subdomain tersebut dari Renoir ke Verso dengan alamat IP tujuan adalah node Gustave. Kemudian, matikan Renoir dan coba lakukan ping ke semua domain dan subdomain yang telah dikonfigurasikan pada nomor 2, 3, dan 4.

> _Create a subdomain expedition.gustave33.com and delegate it from Renoir to Verso, with the target IP being node Gustave.Then, turn off Renoir and try pinging all domains and subdomains configured in tasks 2, 3, and 4 to verify delegation works correctly._

**Answer:**
### Renoir
### nano /etc/bind/zones/gustave33.com

```
$TTL    604800
@       IN      SOA     gustave33.com. root.gustave33.com. (
                        2025103001 ; Serial
                        604800     ; Refresh
                        86400      ; Retry
                        2419200    ; Expire
                        604800 )   ; Negative Cache TTL
;
@       IN      NS      renoir.gustave33.com.
renoir  IN      A       10.150.3.2
4       IN      PTR     gustave33.com.
expedition      IN      NS      verso.gustave33.com.
verso           IN      A       10.150.3.3
```

### Verso
### nano /etc/bind/named.conf.local

```
zone "expedition.gustave33.com" {
    type master;
    file "/etc/bind/zones/expedition.gustave33.com";
};
```

```
mkdir /etc/bind/zones
```

<p>Buat direktori domain pada verso</p>

### Verso
### nano /etc/bind/zones/expedition.gustave33.com

```
$TTL    604800
@       IN      SOA     expedition.gustave33.com. root.expedition.gustave33.com. (
                        2025103001 ; Serial
                        604800     ; Refresh
                        86400      ; Retry
                        2419200    ; Expire
                        604800 )   ; Negative Cache TTL
;
@       IN      NS      verso.gustave33.com.
verso   IN      A       10.150.3.3
@       IN      A       10.150.2.4
www     IN      CNAME   @
```

```
service bind9 restart
```
<p>Restart renoir dan verso</p>

### nameserver pada client

```
nameserver 10.150.3.3
```

### ping lune33.com 
<img width="603" height="291" alt="image" src="https://github.com/user-attachments/assets/f37125be-7d5b-4839-a65c-4722d6724bce" />

### ping sciel33.com
<img width="669" height="185" alt="image" src="https://github.com/user-attachments/assets/0eda354d-2895-41cf-b22a-7e46e3bd178e" />

### ping gustave33.com
<img width="681" height="170" alt="image" src="https://github.com/user-attachments/assets/7208824a-0495-4a37-9ae9-e43bd7d1849f" />

### ping expedition.gustave33.com
<img width="654" height="167" alt="image" src="https://github.com/user-attachments/assets/b331d608-3109-4261-bbdf-f1184ce1d85d" />



<br>

## Soal 5

> Konfigurasi node Lune, Sciel, dan Gustave agar berfungsi sebagai web server Nginx yang akan menyajikan halaman profil, dimana halaman profil akan berbeda untuk setiap node. Dari folder berikut, gunakan profile_lune.html untuk menyajikan halaman profil di node Lune, profile_sciel.html untuk menyajikan halaman profil di node Sciel, dan profile_gustave.html untuk menyajikan halaman profil di node Gustave. Konfigurasikan Nginx di setiap node untuk menyimpan custom access log ke file /tmp/access.log dan error log ke file /tmp/error.log. 

> _Configure Lune, Sciel, and Gustave as Nginx web servers serving profile pages, where each node has a unique profile page:_
> _- Use profile_lune.html for Lune_
> _- Use profile_sciel.html for Sciel_
> _- Use profile_gustave.html for Gustave_
> _In each web server, Configure Nginx to store custom logs:_
> _- Access log: /tmp/access.log_
> _- Error log: /tmp/error.log_

**Answer:**

### lune 
### nano /var/www/html/index.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Lune</title>
<style>
  body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    color: #fff;
    background: linear-gradient(270deg, #0a043c, #4a0c25, #7b1b0c, #f9a826);
    background-size: 800% 800%;
    animation: bgShift 20s ease infinite;
  }
  @keyframes bgShift {
    0% {background-position: 0% 50%;}
    50% {background-position: 100% 50%;}
    100% {background-position: 0% 50%;}
  }
  .container {
    max-width: 700px;
    margin: 4rem auto;
    background: rgba(255, 255, 255, 0.08);
    border-radius: 16px;
    padding: 2.5rem;
    box-shadow: 0 4px 20px rgba(0,0,0,0.5);
    backdrop-filter: blur(6px);
  }
  h1 {
    text-align: center;
    color: #00e5ff;
    text-shadow: 0 0 10px #00e5ff;
  }
  h2 {
    color: #ffd166;
    margin-top: 1.5rem;
  }
  p, li { line-height: 1.6; }
  ul { list-style: none; padding-left: 0; }
  li::before { content: "▹ "; color: #00e5ff; }
  footer { text-align: center; font-size: 0.85rem; color: #ccc; margin-top: 2rem; }
</style>
</head>
<body>
  <div class="container">
    <h1>Lune</h1>
    <p><i>“When one falls, we continue.”</i></p>

    <h2>Core Expertise</h2>
    <ul>
      <li>Analysis of Ancient Technologies</li>
      <li>Equipment Calibration & Field Maintenance</li>
      <li>Defense System Deployment</li>
      <li>Data Collection & Anomaly Detection</li>
    </ul>

    <h2>Profile Summary</h2>
    <p>Lune is the mind behind the expedition’s technology. 
       Her understanding of ancient mechanisms and magical artifacts 
       is key to decoding the Paintress’ secrets and keeping the team operational.</p>
  </div>

  <footer>© 2025 Expedition 33 — For Those Who Come After</footer>
</body>
</html>
```


### nano /etc/nginx/sites-available/default

```
server {
    listen 80;
    server_name lune33.com www.lune33.com;

    root /var/www/html;
    index index.html;

    access_log /tmp/access.log;
    error_log  /tmp/error.log;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

### Sciel
### nano /var/www/html/index.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sciel</title>
<style>
  body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    color: #fff;
    background: linear-gradient(270deg, #0a043c, #4a0c25, #7b1b0c, #f9a826);
    background-size: 800% 800%;
    animation: bgShift 20s ease infinite;
  }
  @keyframes bgShift {
    0% {background-position: 0% 50%;}
    50% {background-position: 100% 50%;}
    100% {background-position: 0% 50%;}
  }
  .container {
    max-width: 700px;
    margin: 4rem auto;
    background: rgba(255, 255, 255, 0.08);
    border-radius: 16px;
    padding: 2.5rem;
    box-shadow: 0 4px 20px rgba(0,0,0,0.5);
    backdrop-filter: blur(6px);
  }
  h1 {
    text-align: center;
    color: #00e5ff;
    text-shadow: 0 0 10px #00e5ff;
  }
  h2 {
    color: #ffd166;
    margin-top: 1.5rem;
  }
  p, li { line-height: 1.6; }
  ul { list-style: none; padding-left: 0; }
  li::before { content: "▹ "; color: #00e5ff; }
  footer { text-align: center; font-size: 0.85rem; color: #ccc; margin-top: 2rem; }
</style>
</head>
<body>
  <div class="container">
    <h1>Sciel</h1>
    <p><i>“Tomorrow comes.”</i></p>

    <h2>Core Expertise</h2>
    <ul>
      <li>Stealth and Infiltration Tactics</li>
      <li>Long-Range Surveillance</li>
      <li>Navigation and Terrain Mapping</li>
      <li>Rapid Response & Target Acquisition</li>
    </ul>

    <h2>Profile Summary</h2>
    <p>Sciel serves as the eyes and ears of Expedition 33. 
       Agile and perceptive, he scouts ahead, tracks enemy movement, 
       and secures safe passage before every major confrontation.</p>
  </div>

  <footer>© 2025 Expedition 33 — For Those Who Come After</footer>
</body>
</html>
```

### nano /etc/nginx/sites-available/default

```
server {
    listen 80;
    server_name sciel33.com www.sciel33.com;

    root /var/www/html;
    index index.html;

    access_log /tmp/access.log;
    error_log  /tmp/error.log;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

### Gustave
### nano /var/www/html/index.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sciel</title>
<style>
  body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    color: #fff;
    background: linear-gradient(270deg, #0a043c, #4a0c25, #7b1b0c, #f9a826);
    background-size: 800% 800%;
    animation: bgShift 20s ease infinite;
  }
  @keyframes bgShift {
    0% {background-position: 0% 50%;}
    50% {background-position: 100% 50%;}
    100% {background-position: 0% 50%;}
  }
  .container {
    max-width: 700px;
    margin: 4rem auto;
    background: rgba(255, 255, 255, 0.08);
    border-radius: 16px;
    padding: 2.5rem;
    box-shadow: 0 4px 20px rgba(0,0,0,0.5);
    backdrop-filter: blur(6px);
  }
  h1 {
    text-align: center;
    color: #00e5ff;
    text-shadow: 0 0 10px #00e5ff;
  }
  h2 {
    color: #ffd166;
    margin-top: 1.5rem;
  }
  p, li { line-height: 1.6; }
  ul { list-style: none; padding-left: 0; }
  li::before { content: "▹ "; color: #00e5ff; }
  footer { text-align: center; font-size: 0.85rem; color: #ccc; margin-top: 2rem; }
</style>
</head>
<body>
  <div class="container">
    <h1>Sciel</h1>
    <p><i>“Tomorrow comes.”</i></p>

    <h2>Core Expertise</h2>
    <ul>
      <li>Stealth and Infiltration Tactics</li>
      <li>Long-Range Surveillance</li>
      <li>Navigation and Terrain Mapping</li>
      <li>Rapid Response & Target Acquisition</li>
    </ul>

    <h2>Profile Summary</h2>
    <p>Sciel serves as the eyes and ears of Expedition 33. 
       Agile and perceptive, he scouts ahead, tracks enemy movement, 
       and secures safe passage before every major confrontation.</p>
  </div>

  <footer>© 2025 Expedition 33 — For Those Who Come After</footer>
</body>
</html>
```

### nano /etc/nginx/sites-available/default

```
server {
    listen 80;
    server_name gustave33.com www.gustave33.com expedition.gustave33.com;

    root /var/www/html;
    index index.html;

    access_log /tmp/access.log;
    error_log  /tmp/error.log;

    location / {
        try_files $uri $uri/ =404;
    }
}
```
### lynx http://lune33.com
<img width="711" height="443" alt="image" src="https://github.com/user-attachments/assets/dd5936a6-c721-4841-a3fc-699034f8fee1" />

### lynx http://sciel33.com
<img width="703" height="457" alt="image" src="https://github.com/user-attachments/assets/c2ecb7a0-ec09-4e93-9d4c-88a5504887b3" />


### lynx  http://gustave33.com
<img width="708" height="434" alt="image" src="https://github.com/user-attachments/assets/2203a61f-8562-495f-82c5-1db60d74556e" />


### lynx http://expedition.gustave33.com
<img width="701" height="401" alt="image" src="https://github.com/user-attachments/assets/55842c4c-4c29-4217-8b69-5823cd520c04" />

### lune
<img width="721" height="152" alt="image" src="https://github.com/user-attachments/assets/31c40868-86fc-47a9-9ca2-9d50f77ff9ac" />

### sciel
<img width="728" height="153" alt="image" src="https://github.com/user-attachments/assets/453477d7-8cba-4762-836f-d9a4e2e06bff" />

### gustave
<img width="711" height="183" alt="image" src="https://github.com/user-attachments/assets/e925c6f2-f85a-4b2c-a2ad-b224a2aa53fd" />







<br>

## Soal 6

> Setelah website berhasil dideploy pada masing-masing node web server dan halaman dapat menampilkan profil yang sesuai,  buatlah custom access log ke file /tmp/access.log di masing-masing node web server menggunakan format log tertentu seperti di bawah:
> - Tanggal dan waktu akses dalam format standar log.
> - Nama node yang sedang diakses.
> - Alamat IP klien yang mengakses website.
> - Metode HTTP dan URI yang diakses oleh klien.
> - Status respons HTTP yang diberikan oleh server.
> - Jumlah byte yang dikirimkan dalam respons.
> - Waktu yang dihabiskan oleh server untuk menangani permintaan.
> - Contoh format log yang sesuai:
>   [01/Oct/2024:11:30:45 +0000] Jarkom Node Lune Access from 192.168.1.15 using method "GET /resep/bayam HTTP/1.1" returned status 200 with 2567 bytes sent in 0.038 seconds

> _After successfully deploying each website and verifying the correct profile page is displayed, create a custom access log in /tmp/access.log on each web server using the following format:_
> _- Date and time of access (standard log format)_
> _- Name of the node being accessed_
> _- IP address of the client accessing the website_
> _- HTTP method and URI accessed by the client_
> _- HTTP response status code_
> _- Number of bytes sent in the response_
> _- Time taken by the server to process the request_
> _- Example Log Format:_
> _[01/Oct/2024:11:30:45 +0000] Jarkom Node Lune Access from 192.168.1.15 using method "GET /resep/bayam HTTP/1.1" returned status 200 with 2567 bytes sent in 0.038 seconds_

**Answer:**

### lune 
### nano /etc/nginx/sites-available/default

```
log_format custom_log '[$time_local] Jarkom Node Lune Access from $remote_addr using method "$request" returned status $status with $body_bytes_sent bytes sent in $request_time seconds';

server {
    listen 80;
    server_name lune33.com www.lune33.com;

    root /var/www/html;
    index index.html;

    access_log /tmp/access.log custom_log;
    error_log  /tmp/error.log;

    location / {
        try_files $uri $uri/ =404;
    }
}
```
### sciel
### nano /etc/nginx/sites-available/default

```

log_format custom_log '[$time_local] Jarkom Node Sciel Access from $remote_addr using method "$request" returned status $status with $body_bytes_sent bytes sent in $request_time seconds';

server {
    listen 80;
    server_name sciel33.com www.sciel33.com;

    root /var/www/html;
    index index.html;

    access_log /tmp/access.log custom_log;
    error_log  /tmp/error.log;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

### gustave
### nano /etc/nginx/sites-available/default

```

log_format custom_log '[$time_local] Jarkom Node Gustave Access from $remote_addr using method "$request" returned status $status with $body_bytes_sent bytes sent in $request_time seconds';

server {
    listen 80;
    server_name gustave33.com www.gustave33.com expedition.gustave33.com;

    root /var/www/html;
    index index.html;

    access_log /tmp/access.log custom_log;
    error_log  /tmp/error.log;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

### lune
<img width="925" height="341" alt="image" src="https://github.com/user-attachments/assets/a947ba07-659e-4c9d-b0ce-c258c72814cc" />

### sciel
<img width="929" height="287" alt="image" src="https://github.com/user-attachments/assets/a1c7e4eb-90b6-469c-bc29-0aac820783ae" />

### gustave
<img width="927" height="286" alt="image" src="https://github.com/user-attachments/assets/e4571a79-296c-412e-9e25-0859d209ce08" />

<br>

## Soal 7

> Gustave merupakan web server yang tidak disarankan untuk dilihat oleh publik. Maka dari itu, ubahlah konfigurasi nginx sehingga halaman profil Gustave menjadi hanya bisa di akses melalui port 8080 dan 8888.

> _The Gustave web server should not be publicly accessible.
Modify the Nginx configuration so that Gustave’s profile page can only be accessed through ports 8080 and 8888._

**Answer:**

### gustave
### nano /etc/nginx/sites-available/default

```
log_format custom_log '[$time_local] Jarkom Node Gustave Access from $remote_addr using method "$request" returned status $status with $body_bytes_sent bytes sent in $request_time seconds';


server {
    listen 8080;
    server_name gustave33.com expedition.gustave33.com;

    root /var/www/html;
    index index.html;

    access_log /tmp/access.log custom_log;
    error_log  /tmp/error.log;

    location / {
        try_files $uri $uri/ =404;
    }
}


server {
    listen 8888;
    server_name gustave33.com expedition.gustave33.com;

    root /var/www/html;
    index index.html;

    access_log /tmp/access.log custom_log;
    error_log  /tmp/error.log;

    location / {
        try_files $uri $uri/ =404;
    }
}

```

### Percobaan mengakses 
<img width="911" height="132" alt="image" src="https://github.com/user-attachments/assets/7ee95f42-568f-451c-9f15-620f351b15fc" />

### Percobaan mengakses dengan port 8080
<img width="870" height="442" alt="image" src="https://github.com/user-attachments/assets/a1e02f3b-4fb8-43a5-ae5d-ec54c115f052" />

### Percobaan mengakses dengan port 8888
<img width="861" height="301" alt="image" src="https://github.com/user-attachments/assets/29fc92a3-faa3-4325-b97d-e7162a67fba7" />




<br>

## Soal 8

> Untuk mempermudah program ekspedisi, maka node Lune, Sciel, Gustave sepakat untuk membuat halaman informasi dengan konten yang sama. Maka dari itu, buatlah lagi 1 server block di dalam konfigurasi nginx yang akan menyajikan file HTML ini. Namun, mereka ingin menyajikan halaman informasi tersebut di port yang berbeda-beda, yaitu Lune menggunakan port 8000, Sciel menggunakan port 8100, dan Gustave menggunakan port 8200.

> _To simplify coordination for the expedition program, Lune, Sciel, and Gustave agree to create a shared information page with the same content. Add one more server block in each node’s Nginx configuration that serves this HTML file 
Each node should serve the information page on a different port:_
> _- Lune → port 8000_
> _- Sciel → port 8100_
> _- Gustave → port 8200_

**Answer:**

### lune 
### nano /var/www/html/info.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Expedition 33 — Mission Brief</title>
<style>
  body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    color: #fff;
    background: linear-gradient(270deg, #0a043c, #4a0c25, #7b1b0c, #f9a826);
    background-size: 800% 800%;
    animation: bgShift 20s ease infinite;
  }
  @keyframes bgShift {
    0% {background-position: 0% 50%;}
    50% {background-position: 100% 50%;}
    100% {background-position: 0% 50%;}
  }
  header {
    text-align: center;
    padding: 3rem 1rem 1rem;
  }
  header h1 {
    font-size: 2.8rem;
    color: #00e5ff;
    letter-spacing: 1px;
    text-shadow: 0 0 10px #00e5ff;
  }
  header p {
    font-size: 1rem;
    color: #b5eaff;
    margin-top: 0.3rem;
  }
  .container {
    max-width: 700px;
    margin: 2rem auto 3rem;
    background: rgba(255, 255, 255, 0.08);
    border-radius: 16px;
    padding: 2rem 2.5rem;
    box-shadow: 0 4px 20px rgba(0,0,0,0.4);
    backdrop-filter: blur(6px);
  }
  h2 {
    color: #00e5ff;
    margin-top: 1.5rem;
  }
  p, li {
    line-height: 1.6;
  }
  ul {
    list-style: none;
    padding: 0;
  }
  li {
    margin: 0.4rem 0;
  }
  strong {
    color: #ffd166;
  }
  .motto {
    text-align: center;
    margin-top: 1.5rem;
    font-style: italic;
    color: #ccc;
    opacity: 0.9;
  }
  footer {
    text-align: center;
    font-size: 0.9rem;
    color: #ddd;
    padding: 1rem;
    background: rgba(0,0,0,0.4);
  }
</style>
</head>
<body>
<header>
  <h1>Expedition 33</h1>
  <p>Mission Log #E33-00</p>
</header>

<div class="container">
  <h2>Mission Brief</h2>
  <p>Expedition 33 is a digital exploration led by <strong>Lune</strong>, <strong>Sciel</strong>, and <strong>Gustave</strong>.  
     Together, they traverse the unknown layers of the Paintress system — seeking order within chaos.</p>

  <h2>Active Nodes</h2>
  <ul>
    <li><strong>Lune</strong> — “When one falls, we continue.”</li>
    <li><strong>Sciel</strong> — “Tomorrow comes.”</li>
    <li><strong>Gustave</strong> — “For those who come after. Right?”</li>
  </ul>

  <h2>Ports</h2>
  <ul>
    <li>Lune: Port <strong>8000</strong></li>
    <li>Sciel: Port <strong>8100</strong></li>
    <li>Gustave: Port <strong>8200</strong></li>
  </ul>

  <div class="motto">
    “Despite the odds, Expedition 33 marches forward.”
  </div>
</div>

<footer>
  © 2025 Expedition 33 — For Those Who Come After
</footer>
</body>
</html>
```

### nano /etc/nginx/sites-available/default

```
server {
    listen 8000;
    server_name lune33.com;

    root /var/www/html;
    index info.html;

    access_log /tmp/access_info.log;
    error_log /tmp/error_info.log;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

### sciel
### nano /var/www/html/info.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Expedition 33 — Mission Brief</title>
<style>
  body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    color: #fff;
    background: linear-gradient(270deg, #0a043c, #4a0c25, #7b1b0c, #f9a826);
    background-size: 800% 800%;
    animation: bgShift 20s ease infinite;
  }
  @keyframes bgShift {
    0% {background-position: 0% 50%;}
    50% {background-position: 100% 50%;}
    100% {background-position: 0% 50%;}
  }
  header {
    text-align: center;
    padding: 3rem 1rem 1rem;
  }
  header h1 {
    font-size: 2.8rem;
    color: #00e5ff;
    letter-spacing: 1px;
    text-shadow: 0 0 10px #00e5ff;
  }
  header p {
    font-size: 1rem;
    color: #b5eaff;
    margin-top: 0.3rem;
  }
  .container {
    max-width: 700px;
    margin: 2rem auto 3rem;
    background: rgba(255, 255, 255, 0.08);
    border-radius: 16px;
    padding: 2rem 2.5rem;
    box-shadow: 0 4px 20px rgba(0,0,0,0.4);
    backdrop-filter: blur(6px);
  }
  h2 {
    color: #00e5ff;
    margin-top: 1.5rem;
  }
  p, li {
    line-height: 1.6;
  }
  ul {
    list-style: none;
    padding: 0;
  }
  li {
    margin: 0.4rem 0;
  }
  strong {
    color: #ffd166;
  }
  .motto {
    text-align: center;
    margin-top: 1.5rem;
    font-style: italic;
    color: #ccc;
    opacity: 0.9;
  }
  footer {
    text-align: center;
    font-size: 0.9rem;
    color: #ddd;
    padding: 1rem;
    background: rgba(0,0,0,0.4);
  }
</style>
</head>
<body>
<header>
  <h1>Expedition 33</h1>
  <p>Mission Log #E33-00</p>
</header>

<div class="container">
  <h2>Mission Brief</h2>
  <p>Expedition 33 is a digital exploration led by <strong>Lune</strong>, <strong>Sciel</strong>, and <strong>Gustave</strong>.  
     Together, they traverse the unknown layers of the Paintress system — seeking order within chaos.</p>

  <h2>Active Nodes</h2>
  <ul>
    <li><strong>Lune</strong> — “When one falls, we continue.”</li>
    <li><strong>Sciel</strong> — “Tomorrow comes.”</li>
    <li><strong>Gustave</strong> — “For those who come after. Right?”</li>
  </ul>

  <h2>Ports</h2>
  <ul>
    <li>Lune: Port <strong>8000</strong></li>
    <li>Sciel: Port <strong>8100</strong></li>
    <li>Gustave: Port <strong>8200</strong></li>
  </ul>

  <div class="motto">
    “Despite the odds, Expedition 33 marches forward.”
  </div>
</div>

<footer>
  © 2025 Expedition 33 — For Those Who Come After
</footer>
</body>
</html>
```

### nano /etc/nginx/sites-available/default

```
server {
    listen 8100;
    server_name sciel33.com;

    root /var/www/html;
    index info.html;

    access_log /tmp/access_info.log;
    error_log /tmp/error_info.log;

    location / {
        try_files $uri $uri/ =404;
    }
}

```

### gustave 
### nano /var/www/html/info.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Expedition 33 — Mission Brief</title>
<style>
  body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    color: #fff;
    background: linear-gradient(270deg, #0a043c, #4a0c25, #7b1b0c, #f9a826);
    background-size: 800% 800%;
    animation: bgShift 20s ease infinite;
  }
  @keyframes bgShift {
    0% {background-position: 0% 50%;}
    50% {background-position: 100% 50%;}
    100% {background-position: 0% 50%;}
  }
  header {
    text-align: center;
    padding: 3rem 1rem 1rem;
  }
  header h1 {
    font-size: 2.8rem;
    color: #00e5ff;
    letter-spacing: 1px;
    text-shadow: 0 0 10px #00e5ff;
  }
  header p {
    font-size: 1rem;
    color: #b5eaff;
    margin-top: 0.3rem;
  }
  .container {
    max-width: 700px;
    margin: 2rem auto 3rem;
    background: rgba(255, 255, 255, 0.08);
    border-radius: 16px;
    padding: 2rem 2.5rem;
    box-shadow: 0 4px 20px rgba(0,0,0,0.4);
    backdrop-filter: blur(6px);
  }
  h2 {
    color: #00e5ff;
    margin-top: 1.5rem;
  }
  p, li {
    line-height: 1.6;
  }
  ul {
    list-style: none;
    padding: 0;
  }
  li {
    margin: 0.4rem 0;
  }
  strong {
    color: #ffd166;
  }
  .motto {
    text-align: center;
    margin-top: 1.5rem;
    font-style: italic;
    color: #ccc;
    opacity: 0.9;
  }
  footer {
    text-align: center;
    font-size: 0.9rem;
    color: #ddd;
    padding: 1rem;
    background: rgba(0,0,0,0.4);
  }
</style>
</head>
<body>
<header>
  <h1>Expedition 33</h1>
  <p>Mission Log #E33-00</p>
</header>

<div class="container">
  <h2>Mission Brief</h2>
  <p>Expedition 33 is a digital exploration led by <strong>Lune</strong>, <strong>Sciel</strong>, and <strong>Gustave</strong>.  
     Together, they traverse the unknown layers of the Paintress system — seeking order within chaos.</p>

  <h2>Active Nodes</h2>
  <ul>
    <li><strong>Lune</strong> — “When one falls, we continue.”</li>
    <li><strong>Sciel</strong> — “Tomorrow comes.”</li>
    <li><strong>Gustave</strong> — “For those who come after. Right?”</li>
  </ul>

  <h2>Ports</h2>
  <ul>
    <li>Lune: Port <strong>8000</strong></li>
    <li>Sciel: Port <strong>8100</strong></li>
    <li>Gustave: Port <strong>8200</strong></li>
  </ul>

  <div class="motto">
    “Despite the odds, Expedition 33 marches forward.”
  </div>
</div>

<footer>
  © 2025 Expedition 33 — For Those Who Come After
</footer>
</body>
</html>
```

### nano /etc/nginx/sites-available/default

```
server {
    listen 8200;
    server_name gustave33.com;

    root /var/www/html;
    index info.html;

    access_log /tmp/access_info.log;
    error_log /tmp/error_info.log;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

```
curl http://lune33.com:8000
curl http://sciel33.com:8100
curl http://gustave33.com:8200
```
<p>Test dari client</p>

### Percobaan akses lune dengan port 8000
<img width="924" height="296" alt="image" src="https://github.com/user-attachments/assets/cba9e0d9-82cd-4b2d-a298-9f630bc05faa" />

<img width="914" height="405" alt="image" src="https://github.com/user-attachments/assets/25111874-be10-443c-8a49-2f8d8674bab2" />

### Percobaan akses sciel dengan port 8100
<img width="875" height="405" alt="image" src="https://github.com/user-attachments/assets/a370eb3d-3dcc-4782-a092-cd07c59f785a" />

<img width="914" height="405" alt="image" src="https://github.com/user-attachments/assets/476fc9aa-3062-4a67-9a48-b35ab4f958fb" />

### Percobaan akses gustave dengan port 8200
<img width="879" height="331" alt="image" src="https://github.com/user-attachments/assets/12b53032-8fbf-4656-a55d-f75e33fdb528" />

<img width="914" height="405" alt="image" src="https://github.com/user-attachments/assets/fadaf1c9-73b8-49a1-9e9c-973a8b9e07ab" />


<br>

## Soal 9

> Untuk mempermudah akses ke profil tiap anggota ekspedisi, buatlah 1 domain lagi yaitu "expeditioners.com" yang akan mengarah ke Alicia. Lalu, untuk mencegah overload dari salah satu web server, konfigurasikan reverse proxy Alicia agar bisa forward request ke server yang sesuai berdasarkan URL profile yang diminta oleh klien dengan ketentuan sebagai berikut:
> -  Request untuk “expeditioners.com/profil_lune” harus dialihkan ke halaman profil web server Lune.
> -  Request untuk “expeditioners.com/profil_sciel” harus dialihkan ke halaman profil web server Sciel.
> -  Request untuk “expeditioners.com/profil_gustave” harus dialihkan ke halaman profil web server Gustave.
> Jika terdapat request ke URL selain profil yang ditentukan, reverse proxy akan mengalihkan ke halaman informasi pada web server Lune.

> _To make it easier to access each member’s profile, create a new domain “expeditioners.com” that points to Alicia. "
Configure Alicia’s reverse proxy (Nginx) to forward requests to the correct web server based on the requested URL, with the following rules:_
> _- Request URL expeditioners.com/profil_lune, Forward To Lune’s profile page_
> _- Request URL expeditioners.com/profil_sciel, Forward To Sciel’s profile page_
> _- Request URL expeditioners.com/profil_gustave, Forward To Gustave’s profile page_
> _- Any other URL, Forward To Lune’s information page_

**Answer:**




<br>

## Soal 10

> Untuk mendistribusikan traffic halaman informasi, atur Reverse Proxy Alicia agar dapat membagi pekerjaan kepada web server Lune, Sciel, dan Gustave secara optimal menggunakan algoritma Round-robin. Pastikan target pembagian load merupakan halaman informasi, bukan halaman profil masing-masing web server.

> _To distribute traffic for the information page, configure the reverse proxy (Alicia) to use Round-robin load balancing between the three web servers: Lune, Sciel, and Gustave.
Ensure that only the information page is included in the load-balancing configuration - not the profile pages._

**Answer:**

- Screenshot

  `Put your screenshot in here`

- Explanation

  `Put your explanation in here`

<br>
  
## Problems

## Revisions (if any)
