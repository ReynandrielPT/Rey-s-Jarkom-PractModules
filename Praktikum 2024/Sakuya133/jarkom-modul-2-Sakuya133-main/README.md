[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/1niUih_B)
| Name                           | NRP        | Class |
|--------------------------------|------------|-------|
| Ida Bagus Gde Dimas Sutha Maha | 5025241218 | B     |



## Put your topology config image here!

<img width="2879" height="1609" alt="Screenshot 2025-10-01 223602" src="https://github.com/user-attachments/assets/d31e8dcd-bd28-466a-92c6-5e2d40da24f2" />

## Put your GNS3 Project file here!

[`Put file URL here`](https://drive.google.com/drive/folders/1rK4UhsbMVpqLQ0Ozg5MBlUPfnqhnFzC_?hl=id)

<br>


## Soal 1

> Dokumentasikan hasil pengelompokan subnet yang telah dibuat.

> _Document the results of the subnet grouping that has been created._

**Answer:**

- Screenshot
<img width="1568" height="922" alt="image" src="https://github.com/user-attachments/assets/718bf068-64b7-45eb-b5c3-4e2ce8a2a4ad" />


  

- Explanation

  <p>Subnet merupakan pengelompokan domain yang dibatasi oleh sepasang router, jika kita analisa ada total 7 subnet domain yang ada</p>
  

<br>

## Soal 2

> Lakukan konfigurasi routing agar setiap node dapat saling berkomunikasi. Pastikan setiap router dapat mengirimkan paket ke jaringan lain melalui tabel routing yang sesuai. Sertakan bukti bahwa Falcon bisa melakukan ping ke SpiderMan, DoctorStrange, dan ScarletWitch.

> _Configure routing so that each node can communicate with each other. Ensure each router can forward packets to other networks through the appropriate routing table. Include proof that Falcon can ping SpiderMan, Doctor Strange, and ScarletWitch._

**Answer:**
- Konfigurasi

### falcon
```

# Static config for eth0
auto eth0
iface eth0 inet static
	address 10.150.3.2
	netmask 255.255.255.0
	gateway 10.150.3.1
	up echo nameserver 192.168.0.1 > /etc/resolv.conf

```

### BlackPanther
```


# Static config for eth0
auto eth0
iface eth0 inet static
	address 10.150.1.2
	netmask 255.255.255.0
	gateway 10.150.1.1
	up echo nameserver 192.168.0.1 > /etc/resolv.conf



# Static config for eth1
auto eth1
iface eth1 inet static
	address 10.150.3.1
	netmask 255.255.255.0
	up echo nameserver 192.168.1.1 > /etc/resolv.conf



# Static config for eth2
auto eth2
iface eth2 inet static
	address 10.150.4.1
	netmask 255.255.255.0
	up echo nameserver 192.168.2.1 > /etc/resolv.conf


```

### IronMan

```

# DHCP config for eth0
auto eth0
iface eth0 inet dhcp
up iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.150.0.0/16

# Static config for eth1
auto eth1
iface eth1 inet static
	address 10.150.1.1
	netmask 255.255.255.0
	up echo nameserver 192.168.1.1 > /etc/resolv.conf



# Static config for eth2
auto eth2
iface eth2 inet static
	address 10.150.2.1
	netmask 255.255.255.0
	up echo nameserver 192.168.2.1 > /etc/resolv.conf

up ip route add 10.150.3.0/24 via 10.150.1.2
up ip route add 10.150.5.0/24 via 10.150.2.2
up ip route add 10.150.6.0/24 via 10.150.2.2
up ip route add 10.150.7.0/24 via 10.150.2.2
up ip route add 10.150.4.0/24 via 10.150.1.2

```
### BlackWidow
```

# Static config for eth0
auto eth0
iface eth0 inet static
	address 10.150.2.2
	netmask 255.255.255.0
	gateway 10.150.2.1
	up echo nameserver 192.168.0.1 > /etc/resolv.conf



# Static config for eth1
auto eth1
iface eth1 inet static
	address 10.150.6.1
	netmask 255.255.255.0

	up echo nameserver 192.168.1.1 > /etc/resolv.conf



# Static config for eth2
auto eth2
iface eth2 inet static
	address 10.150.5.1
	netmask 255.255.255.0

	up echo nameserver 192.168.2.1 > /etc/resolv.conf



up ip route add 10.150.1.0/24 via 10.150.2.1
up ip route add 10.150.7.0/24 via 10.150.6.2

```
### Thor
```
# Static config for eth0
auto eth0
iface eth0 inet static
	address 10.150.5.2
	netmask 255.255.255.0
	gateway 10.150.5.1
	up echo nameserver 192.168.0.1 > /etc/resolv.conf

# DHCP config for eth0
#auto eth0
#iface eth0 inet dhcp
#	hostname netics-pc-3


```
### ScarletWitch
```

# Static config for eth0
auto eth0
iface eth0 inet static
	address 10.150.5.3
	netmask 255.255.255.0
	gateway 10.150.5.1
	up echo nameserver 192.168.0.1 > /etc/resolv.conf

# DHCP config for eth0
#auto eth0
#iface eth0 inet dhcp
#	hostname netics-pc-4

```
### Hulk
```


# Static config for eth0
auto eth0
iface eth0 inet static
	address 10.150.6.3
	netmask 255.255.255.0
	gateway 10.150.6.1
	up echo nameserver 192.168.0.1 > /etc/resolv.conf

# DHCP config for eth0
#auto eth0
#iface eth0 inet dhcp
#	hostname netics-pc-5


```
### SpiderMan
```

# Static config for eth0
auto eth0
iface eth0 inet static
	address 10.150.7.2
	netmask 255.255.255.0
	gateway 10.150.7.1
	up echo nameserver 192.168.0.1 > /etc/resolv.conf

# DHCP config for eth0
#auto eth0
#iface eth0 inet dhcp
#	hostname netics-pc-6


```

### DoctorStrange
```

# Static config for eth0
auto eth0
iface eth0 inet static
	address 10.150.7.3
	netmask 255.255.255.0
	gateway 10.150.7.1
	up echo nameserver 192.168.0.1 > /etc/resolv.conf

# DHCP config for eth0
#auto eth0
#iface eth0 inet dhcp
#	hostname netics-pc-6


```
### Vision
```

# Static config for eth0
auto eth0
iface eth0 inet static
	address 10.150.6.2
	netmask 255.255.255.0
	gateway 10.150.6.1
	up echo nameserver 192.168.0.1 > /etc/resolv.conf



# Static config for eth1
auto eth1
iface eth1 inet static
	address 10.150.7.1
	netmask 255.255.255.0
	
	up echo nameserver 192.168.1.1 > /etc/resolv.conf


```

- Screenshot

  ### Falcon -> ScarletWitch
  <img width="1401" height="622" alt="image" src="https://github.com/user-attachments/assets/116436ec-d6dc-4023-9978-af74b9a20b21" />

  ### Falcon -> Spiderman
  <img width="1332" height="287" alt="image" src="https://github.com/user-attachments/assets/496264b5-5db2-4352-8c87-54dce9a03d0a" />

  ### Falcon -> DoctorStrange
  <img width="1308" height="407" alt="image" src="https://github.com/user-attachments/assets/11af8d45-3c67-4dec-a7dc-488c4880f10c" />


- Explanation

 <p>Untuk soal 2, dikarenakan soal 4 5 6, diperlukan menggunakan DCHP, maka pada soal 2 saya menggunakan static, agar tidak melompati soal</p>

<br>

## Soal 3

> Lakukan konfigurasi agar semua node dapat terhubung ke internet. Sertakan hasil uji coba dengan melakukan ping ke google.com dari node Falcon, CaptainAmerica, SpiderMan, dan Thor.

> _Configure all nodes to connect to the internet. Include test results by pinging google.com from the Falcon, CaptainAmerica, SpiderMan, and Thor nodes._

**Answer:**

- Config
### Captain America
```


# Static config for eth0
auto eth0
iface eth0 inet static
	address 10.150.3.3
	netmask 255.255.255.0
	gateway 10.150.3.1
	up echo nameserver 192.168.0.1 > /etc/resolv.conf




```

- Screenshot

 ### Falcon
 <img width="1416" height="350" alt="image" src="https://github.com/user-attachments/assets/ff9d49f7-60f1-4cef-98c8-a5ac81224222" />

 ### CaptainAmerica
 <img width="1449" height="371" alt="image" src="https://github.com/user-attachments/assets/8bfc8c8f-593b-48e4-ba6b-3be4bfdb5574" />

 ### Spiderman
 <img width="1423" height="417" alt="image" src="https://github.com/user-attachments/assets/b58f332a-5cbd-46ee-8ab0-f16d05760ac3" />

 ### Thor
 <img width="1441" height="517" alt="image" src="https://github.com/user-attachments/assets/de82f66d-e9bc-47c9-83ec-f0f181989b03" />


- Explanation

  <p>Pada soal kali ini, kita menambahkan config static pada captain america</p>

<br>

## Soal 4

> Berikan Falcon alamat IP dalam rentang [Prefix IP].3.20 - [Prefix IP].3.25
> <br> </br>
> Berikan Hawkeye alamat IP dalam rentang [Prefix IP].4.30 - [Prefix IP].4.35
> <br> </br>
> Berikan Hulk alamat IP dalam rentang [Prefix IP].6.50 - [Prefix IP].6.55

<br>

> _Give Falcon an IP address in the range [IP Prefix].3.20 - [IP Prefix].4.35_
> <br> </br>
> _Give Hawkeye an IP address in the range [IP Prefix].4.30 - [IP Prefix].4.35_
> <br> </br>
> _Give Hulk an IP address in the range [IP Prefix].6.50 - [IP Prefix].6.55_

**Answer:**

- Screenshot

  `Put your screenshot in here`

- Explanation

  <p>Sepurane GNS3 aku ngambek</p>

<br>

## Soal 5

> Berikan ScarletWitch dan Thor alamat IP dalam rentang [Prefix IP].5.40 - [Prefix IP].5.45 dan [Prefix IP].5.100 - [Prefix IP].5.105

> _Give ScarletWitch and Thor IP addresses in the range [IP Prefix].5.40 - [IP Prefix].5.45 and [IP Prefix].5.100 - [IP Prefix].5.105_

**Answer:**

- Screenshot

  `Put your screenshot in here`

- Explanation

  `Put your explanation in here`

<br>

## Soal 6

> Berikan SpiderMan dan DoctorStrange alamat IP dalam rentang [Prefix IP].7.60 - [Prefix IP].7.65  dan [Prefix IP].7.110 - [Prefix IP].7.115

> _Give SpiderMan and DoctorStrange IP addresses in the ranges [IP Prefix].7.60 - [IP Prefix].7.65 and [IP Prefix].7.110 - [IP Prefix].7.115_

**Answer:**

- Screenshot

  `Put your screenshot in here`

- Explanation

  `Put your explanation in here`

<br>

## Soal 7

> Tetapkan waktu peminjaman alamat IP pada DHCP server untuk client yang terhubung melalui Switch 2 selama 5 menit (Default), dan untuk client melalui Switch 5 selama 10 menit (Default). Tetapkan juga batas waktu peminjaman maksimal selama 2 jam.
> <br> </br>
> Tetapkan waktu peminjaman alamat IP pada DHCP server untuk client yang terhubung melalui Switch 1 dan Switch 3 selama 2 menit (Default). Tetapkan juga batas waktu peminjaman maksimal selama 100 menit.

<br>

> _Set the IP address lease period on the DHCP server for clients connected through Switch 2 to 5 minutes (default), and for clients connected through Switch 5 to 10 minutes (default). Also, set the maximum lease period to 2 hours._
> <br> </br>
> _Set the IP address lease time on the DHCP server for clients connected via Switch 1 and Switch 3 to 2 minutes (default). Also set the maximum lease time limit to 100 minutes._

**Answer:**

- Screenshot

  `Put your screenshot in here`

- Explanation

  `Put your explanation in here`

<br>

## Soal 8

> Ubah konfigurasi DHCP Server agar Hawkeye, Thor, dan SpiderMan mendapatkan IP statis dengan [Prefix IP].x.5, namun masih menggunakan DHCP.

> _Change the DHCP Server configuration so that Hawkeye, Thor, and SpiderMan get static IPs with [Prefix IP].x.5, but still use DHCP._

**Answer:**

- Screenshot

  `Put your screenshot in here`

- Explanation

  `Put your explanation in here`

<br>

## Soal 9

> Buatlah konfigurasi DHCP Failover dengan WinterSoldier sebagai DHCP server backup untuk CaptainAmerica.

> _Create a DHCP Failover configuration with WinterSoldier as the backup DHCP server for CaptainAmerica._

**Answer:**

- Screenshot

  `Put your screenshot in here`

- Explanation

  `Put your explanation in here`

<br>

## Soal 10

> Buatlah konfigurasi agar CaptainAmerica dan WinterSoldier berjalan dengan mode Load Balancing.

> _Create a configuration so that CaptainAmerica and WinterSoldier run in Load Balancing mode._

**Answer:**

- Screenshot

  `Put your screenshot in here`

- Explanation

  `Put your explanation in here`

<br>
  
## Problems

## Revisions (if any)
