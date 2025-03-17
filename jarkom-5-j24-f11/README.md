[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/s7OBVfDF)
| Name | NRP | Kelas |
| --- | --- | ----------|
| Nabil Julian Syah | 5025231023 | Jaringan Komputer (F) |
| Reynandriel Pramas Thandya | 5025231113 | Jaringan Komputer (F) |

## Put your topology config image here!

- Topology
  ![Topo](https://github.com/user-attachments/assets/a690f6d9-3fa2-413f-9005-9bd5a9055f1b)

- Rute

![Rute](https://github.com/user-attachments/assets/d423d3c7-2bd9-4cd2-8040-310ad4355569)

## Put your VLSM calculation here!

![ruting1](https://github.com/user-attachments/assets/339f22ee-2a06-4591-b2be-d885fd9eae5d)
![ruting2](https://github.com/user-attachments/assets/2a0dd5bb-aed4-44dd-a71d-ed9762db8bf6)

<b>Tree:</b>

![Tree](https://github.com/user-attachments/assets/30267c75-6e4c-48bb-803a-75ebeaf09f07)

## Put your IP route here!

![pembaiganip1](https://github.com/user-attachments/assets/ceb13b79-5df9-40db-9960-8fe8ce416d48)
![pembagianip2](https://github.com/user-attachments/assets/62309eb2-bc43-46f6-9821-53807b370d9c)

### Subneting

> Heiji

    ```auto eth0
    iface eth0 inet dhcp

    auto eth1
    iface eth1 inet static
    	address 10.72.0.9
    	netmask 255.255.255.252

    auto eth2
    iface eth2 inet static
    	address 10.72.0.13
    	netmask 255.255.255.252```

> Agasa

```auto eth0
iface eth0 inet static
	address 10.72.0.10
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 10.72.4.1
	netmask 255.255.252.0

auto eth2
iface eth2 inet static
	address 10.72.0.1
	netmask 255.255.255.252
```

> Ran

```
auto eth0
iface eth0 inet static
	address 10.72.4.2
	netmask 255.255.252.0
	gateway 10.72.4.1
```

> Kazuha

```auto eth0
iface eth0 inet static
	address 10.72.0.2
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 10.72.0.5
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 10.72.8.1
	netmask 255.255.248.0
```

> Sonoko

```auto eth0
iface eth0 inet static
	address 10.72.0.6
	netmask 255.255.255.252
	gateway 10.72.0.5
```

> Haibara

```auto eth0
iface eth0 inet static
	address 10.72.8.2
	netmask 255.255.248.0
	gateway 10.72.8.1
```

> Ayumi

```auto eth0
iface eth0 inet static
	address 10.72.0.14
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 10.72.0.17
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 10.72.0.129
	netmask 255.255.255.128
```

> Shinichi

```auto eth0
iface eth0 inet static
	address 10.72.0.131
	netmask 255.255.255.128
	gateway 10.72.0.129
```

> Conan

```auto eth0
iface eth0 inet static
	address 10.72.0.130
	netmask 255.255.255.128
	gateway 10.72.0.129
```

> Mitsuhiko

```auto eth0
iface eth0 inet static
	address 10.72.0.18
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 10.72.0.21
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 10.72.2.1
	netmask 255.255.254.0
```

> Megure

```auto eth0
iface eth0 inet static
	address 10.72.0.22
	netmask 255.255.255.252
	gateway 10.72.0.21
```

> Kogoro

```auto eth0
iface eth0 inet static
	address 10.72.2.2
	netmask 255.255.254.0
	gateway 10.72.2.1
```

> Genta

```auto eth0
iface eth0 inet static
	address 10.72.2.128
	netmask 255.255.254.0
	gateway 10.72.2.1
```

### Routing

> Heiji

- Agasa

  ```
  up route add -net 10.72.4.0 netmask 255.255.252.0 gw 10.72.0.10 #A1
  up route add -net 10.72.0.0 netmask 255.255.255.252 gw 10.72.0.10 #A2
  up route add -net 10.72.0.4 netmask 255.255.255.252 gw 10.72.0.10 #A3
  up route add -net 10.72.8.0 netmask 255.255.248.0 gw 10.72.0.10 #A4
  ```

- Ayumi
  ```
  up route add -net 10.72.0.128 netmask 255.255.255.128 gw 10.72.0.14 #A7
  up route add -net 10.72.0.16 netmask 255.255.255.252 gw 10.72.0.14 #A8
  up route add -net 10.72.0.20 netmask 255.255.255.252 gw 10.72.0.14 #A9
  up route add -net 10.72.2.0 netmask 255.255.254.0 gw 10.72.0.14 #A10
  ```

> Agasa

- Kazuha

  ```
  up route add -net 10.72.0.4 netmask 255.255.255.252 gw 10.72.0.2 #A3
  up route add -net 10.72.8.0 netmask 255.255.248.0 gw 10.72.0.2 #A4
  ```

- Heiji
  ```
  up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.72.0.9 #def route
  ```

> Kazuha

- Agasa
  ```
  up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.72.0.1 #def route
  ```

> Ayumi

- Mitsuhiko

  ```
  up route add -net 10.72.0.20 netmask 255.255.255.252 gw 10.72.0.18 #A9
  up route add -net 10.72.2.0 netmask 255.255.254.0 gw 10.72.0.18 #A10
  ```

- Heiji
  ```
  up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.72.0.13 #def route
  ```

> Mitsuhiko

- Ayumi
  ```
  up route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.72.0.17 #def route
  ```

## Soal 1

> Bagaimana cara mengkonfigurasi iptables pada router bernama 'Heiji' agar memungkinkan jaringan mengakses internet melalui interface eth0 menggunakan SNAT tanpa menggunakan MASQUERADE?

> _How to configure iptables on a router named ‘Heiji’ to allow the network to access the internet through interface eth0 using SNAT without using MASQUERADE?_

**Answer:**

- Screenshot

![nomor1Heiji](https://github.com/user-attachments/assets/3a895b24-3daa-4da9-bba8-ee665e8a35fb)
![nomor1Kazuha](https://github.com/user-attachments/assets/b9000b07-c813-40e3-b855-1423021905e5)

- Configuration

> Heiji

```
ETH0=$(ip -4 a show eth0 | grep ‘inet ‘ | awk ‘{print $2}’ | cut -d’/’ -f1)
iptables -t nat -A POSTROUTING -o eth0 -j SNAT –-to-source “$ETH0”
```

> Di setiap node di .bashrc

```
echo “nameserver 192.168.122.1” > /etc/resolv.conf
```

- Explanation

  Karena tidak bisa menggunakan MASQUERADE, maka disini kami menggunakan ip Heiji yang terhubung dengan internet (pada interface eth0). Disini kami menggunakan command `ip -4 a show eth0 | grep ‘inet ‘ | awk ‘{print $2}’ | cut -d’/’ -f1` untuk mendapatkan ip Heiji pada eth0 kemudian diassign ke variabel ETH0. Kemudian tambahkan rules pada iptables NAT dengan `iptables -t nat -A POSTROUTING -o eth0 -j SNAT –to-source “$ETH0”` yang nantinya akan mengarahkan seluruh paket yang mengakses internet akan diubah ip asalnya menjadi ip Heiji yang terhubung internet.

<br>

## Soal 2

> Kalian diminta untuk melakukan drop semua paket masuk TCP kecuali pada port 1744 pada node Shinichi.

> _You are asked to drop all incoming TCP packets except on port 1744 on Shinichi's node_

**Answer:**

- Screenshot

Shinici

![nomor2Shinici](https://github.com/user-attachments/assets/2a919360-baca-4625-9f01-4253bac65ace)

Conan

![nomor2Conan](https://github.com/user-attachments/assets/d1beca53-8046-4d8e-a592-9f863211159c)

- Configuration

  ```
  iptables -A INPUT -p tcp --dport 1744 -j ACCEPT
  iptables -A INPUT -p tcp -j DROP
  iptables-save
  ```

- Explanation

  Untuk memenuhi permintaan soal, kami menggunakan menambahkan rules firewall pada Shinichi dengan iptables. Tambahkan rules pertama yaitu untuk accept ketika Shinichi dimasukkan paket tcp dengan port 1744 `iptables -A INPUT -p tcp --dport 1744 -j ACCEPT`. Lalu rules selanjutnya adalah `iptables -A INPUT -p tcp -j DROP` supaya jika rules pertama tidak masuk maka akan ke rules selanjutnya (akan didrop). Save rules dengan iptables-save. Testing dengan telnet pada node lain.

<br>

## Soal 3

> Lakukan pembatasan sehingga koneksi SSH pada semua Web Server hanya dapat dilakukan oleh user yang berada pada node Ran.

> _Make restrictions so that SSH connections to all Web Servers can only be made by users who are on the Ran node._

**Answer:**

- Screenshot

> Megure

![nomor3Megure](https://github.com/user-attachments/assets/586d3dcd-c47d-4e4c-8e37-969e9f84521c)

> Conan

![nomor3Conan](https://github.com/user-attachments/assets/067f10ec-1475-46bc-9ff5-4314aa08a1f7)

> Sonoko

![nomor3Sonoko](https://github.com/user-attachments/assets/a9be809a-7181-4e4e-a633-e36ca4e37b51)

### Testing

> Ran

![nomor3Ran](https://github.com/user-attachments/assets/47cda62b-95db-4743-942c-b15819b43541)

> Failed

![nomor3Fail](https://github.com/user-attachments/assets/6a9e44af-2a7b-4017-b706-cfc287147f2f)

- Configuration

> Di tiga webserver

```
iptables -A INPUT -p tcp --dport 22 -m iprange --src-range 10.72.4.2-10.72.7.254 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
iptables-save
```

### testing

```
ssh root@10.72.0.130
ssh root@10.72.0.22
ssh root@10.72.0.6
```

- Explanation

  Koneksi SSH dibentuk dengan menggunakan protokol TCP dengan port 22. Dengan begitu untuk memblokir dan hanya menerima dari IP Ran, kita bisa membuat rules di tiga webserver dengan iptables. Rules pertama yaitu menerima dari ip Ran dapat dilakukan dengan `iptables -A INPUT -p tcp --dport 22 -m iprange --src-range 10.72.4.2-10.72.7.254 -j ACCEPT`. Disini kenapa menggunakan range karena ip Ran bisa berupa apa saja selama pada rentang tersebut (sesuai subnet). Rules kedua (yang dimana akan dilakukan ketika rules pertama tidak dijalankan) adalah rules untuk menolak seluruh SSH selain dari IP Ran yaitu dengan `iptables -A INPUT -p tcp --dport 22 -j DROP`. Jangan lupa untuk save dengan `iptables-save`. Lakukan testing dengan melakukan koneksi SSH ke tiga webserver tersebut.

<br>

## Soal 4

> Semua subnet hanya dapat mengakses Web Server pada port 80 dan 443 (Conan, Sonoko, dan Megure) pada hari Senin-Jumat, pukul 07:00- 19:00.

> _All subnets can access the Web Server (Conan, Sonoko, and Megure) only on ports 80 and 443, from Monday to Friday, between 07:00-19:00._

**Answer:**

- Screenshot
  Conan

![nomor4Conan](https://github.com/user-attachments/assets/0ff76e11-32f6-48ba-846a-174f6dc2460f)

Megure

![nomor4Megure](https://github.com/user-attachments/assets/d1d1f1d8-92c7-498c-8988-b3726cbe4bc8)

Sonoko

![nomor4Sonoko](https://github.com/user-attachments/assets/f00f3dfd-3ab1-447f-b14b-f9ec9ac46439)

- Testing Hari Benar Jam Benar

![nomor4TestingRanDayBenarJamBenar](https://github.com/user-attachments/assets/93fbf753-46d5-4815-9108-624d609a3366)

- Testing Hari Benar Jam Salah

![nomor4TestingRanDayBenarJamSalah](https://github.com/user-attachments/assets/3db72a08-f1d2-4e86-bfb7-cda564d89bde)

- Testing Hari Salah Jam Benar

![nomor4TestingRanDaySalahJamBenar](https://github.com/user-attachments/assets/e929c36a-f689-49ba-bbf6-ea261db2c325)

- Testing Hari Salah Jam Salah

![nomor4TestingRanDaySalahJamSalah](https://github.com/user-attachments/assets/e628c008-203d-4e59-9e4b-e251deccc410)

- Configuration

> Di tiga webserver

    ```
    iptables -A INPUT -p tcp -m multiport --dports 80,443 -m time --timestart 07:00 --timestop 19:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
    iptables -A INPUT -j DROP
    iptables-save
    ```

> Testing (lakukan di Ran dan di Hibara)

```
date -–set=”2024-12-2 10:00:00”
telnet 10.72.0.130 80
telnet 10.72.0.130 443
telnet 10.72.0.130 44

telnet 10.72.0.22 80
telnet 10.72.0.22 443
telnet 10.72.0.130 44

telnet 10.72.0.6 80
telnet 10.72.0.6 443
telnet 10.72.0.130 44

date -–set=”2024-12-1 10:00:00”
telnet 10.72.0.130 80
telnet 10.72.0.130 443
telnet 10.72.0.130 44

telnet 10.72.0.22 80
telnet 10.72.0.22 443
telnet 10.72.0.22 44

telnet 10.72.0.6 80
telnet 10.72.0.6 443
telnet 10.72.0.6 44

date --set=”2024-12-2 21:00:00”
telnet 10.72.0.130 80
telnet 10.72.0.130 443
telnet 10.72.0.130 44

telnet 10.72.0.22 80
telnet 10.72.0.22 443
telnet 10.72.0.22 44

telnet 10.72.0.6 80
telnet 10.72.0.6 443
telnet 10.72.0.6 44

date –-set=”2024-12-1 21:00:00”
telnet 10.72.0.130 80
telnet 10.72.0.130 443
telnet 10.72.0.130 44

telnet 10.72.0.22 80
telnet 10.72.0.22 443
telnet 10.72.0.22 44

telnet 10.72.0.6 80
telnet 10.72.0.6 443
telnet 10.72.0.6 44
```

Bisa dilihat, ketika dilakukan telnet di luar hari dan jam yang ditentukan, telnet tidak bisa dilakukan. Sementara jika telnet dilakukan pada hari dan jam yang sesuai maka akan dapat dilakukan. Telnet juga tidak bisa dilakukan pada port selain 80 dan 443.

- Explanation

  Supaya webserver hanya bisa diakses pada hari kerja, pukul 7 pagi hingga 7 malam, dan hanya pada port 80 dan 443 kita bisa menambahkan rule iptables dengan `iptables -A INPUT -p tcp -m multiport --dports 80,443 -m time --timestart 07:00 --timestop 19:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT`. Kemudian bila diluar dari kriteria tersebut maka akan didrop dengan rules berikutnya dengan `iptables -A INPUT -j DROP` lalu save dengan `iptables-save`. Terakhir lakukan testing pada client. (Gunakan date --set untuk mengubah waktu)

<br>

## Soal 5

> Ternyata subnet Haibara memiliki akses tambahan, yaitu dapat mengakses Web Server pada port 80 dan 443 di luar hari Senin-Jumat (hari Sabtu dan Minggu), tanpa pembatasan waktu.

> _The Haibara subnet has additional access, allowing it to access the Web Server on ports 80 and 443 outside of Monday to Friday (on Saturday and Sunday), with no time restrictions._

**Answer:**

- Screenshot

Conan

![nomor5Conan](https://github.com/user-attachments/assets/b27882fb-22b9-40b9-bdd4-119613b94860)

Megure

![nomor5Megure](https://github.com/user-attachments/assets/490380b0-b6a4-49e3-b998-c61eff280d15)

Sonoko

![nomor5Sonokok](https://github.com/user-attachments/assets/9b4888dc-7099-4026-b408-65245cb08ab2)

Testing hari benar

![nomor5TestingHariBenar](https://github.com/user-attachments/assets/1e9fa8a4-26f4-494b-86ef-227921d98a48)

Testing hari salah

![nomor5TestingHariSalah](https://github.com/user-attachments/assets/efbad97d-e535-4211-8550-67a069c51a37)

- Configuration

> Di tiga webserver

    ```
    iptables -I INPUT 3 -p tcp -m multiport --dports 80,443 -s 10.72.8.0/21  -m time --weekdays Sat,Sun -j ACCEPT
    iptables -I INPUT 4  -s 10.72.8.0/21 -j DROP
    iptables-save
    ```

> Testing

```
date –set=”2024-12-2 10:00:00”
telnet 10.72.0.130 80
telnet 10.72.0.130 443
telnet 10.72.0.130 44

telnet 10.72.0.22 80
telnet 10.72.0.22 443
telnet 10.72.0.22 44

telnet 10.72.0.6 80
telnet 10.72.0.6 443
telnet 10.72.0.6 44

date –set=”2024-12-1 10:00:00”
telnet 10.72.0.130 80
telnet 10.72.0.130 443
telnet 10.72.0.130 44

telnet 10.72.0.22 80
telnet 10.72.0.22 443
telnet 10.72.0.22 44

telnet 10.72.0.6 80
telnet 10.72.0.6 443
telnet 10.72.0.6 44
```

Dapat dilihat, pada testing dari Haibara jika dilakukan pada hari selain Sabtu dan Minggu akan didrop (telnet tidak bisa dilakukan). Akan tetapi jika dilakukan pada hari Sabtu dan Minggu, telnet dapat dilakukan.

- Explanation

  Untuk menambahkan aturan firewall untuk subnet Haibara atau A4, kita bisa menambahkan rule pada tiga webserver. Hanya saja berbeda dari sebelumnya, kita harus menyisipkan pada sebelum aturan soal nomor 4 (supaya tidak di accept dan harus melalui rule nomor 5 terlebih dahulu). Rule pertama yaitu untuk menerima koneksi/paket dari subnet Haibara (A4) pada hari Sabtu dan Minggu pada port 80 dan 443 dengan command `iptables -I INPUT 3 -p tcp -m multiport --dports 80,443 -s 10.72.8.0/21  -m time --weekdays Sat,Sun -j ACCEPT`. Kemudian jika selain itu tetapi dari IP subnet Haibara (A4) pula akan didrop. Rule tersebut dapat dilakukan dengan command `iptables -I INPUT 4  -s 10.72.8.0/21 -j DROP`. Kedua rule tersebut ditambahkan pada urutan 3 dan 4 supaya posisinya sebelum rule soal nomor 4. Save dan lakukan testing pada client. (Gunakan date --set untuk mengubah waktu)

<br>

## Soal 6

> Akses ke Web Server Conan, Sonoko, dan Megure pada port 80 dan 443 dilarang pada hari Jumat, pukul 11:00-13:00 (maklum, Jumatan rek).

> _Access to the Web Server (Conan, Sonoko, and Megure) on ports 80 and 443 is prohibited on Fridays between 11:00-13:00 (It's Friday prayer time)._

**Answer:**

- Screenshot

Conan

![nomor6Conan](https://github.com/user-attachments/assets/a6fc8bae-391e-45b9-952f-86eb1cd6c8b5)

Megure

![nomor6Megure](https://github.com/user-attachments/assets/1864b462-cd7f-4a7e-9821-d06b9af22976)

Sonoko

![nomor6Sonoko](https://github.com/user-attachments/assets/3a13b261-7dd5-49dd-9170-068aed49f276)

- Testing di jam Jumatan

![nomor6TestingJumatan](https://github.com/user-attachments/assets/14f8b455-3ef6-4442-bdd3-addc055d97d8)

- Testing di luar jam Jumatan

![nomor6TestingDiluarJumatan](https://github.com/user-attachments/assets/c96054b8-ca72-4b41-ab49-27d872f3ef84)

- Configuration

> Di tiga webserver

    ```
    iptables -I INPUT 3 -p tcp -m multiport --dports 80,443 -m time --timestart 11:00 --timestop 13:00 --weekdays Fri -j DROP
    iptables-save
    ```

> Testing di jam Jumatan

    ```
    date –set=”2024-12-6 11:00:00”
    telnet 10.72.0.130 80
    telnet 10.72.0.130 443
    telnet 10.72.0.130 44

    telnet 10.72.0.22 80
    telnet 10.72.0.22 443
    telnet 10.72.0.22 44

    telnet 10.72.0.6 80
    telnet 10.72.0.6 443
    telnet 10.72.0.6 44
    ```

> Testing di luar jam Jumatan

    ```
    date –set=”2024-12-6 08:00:00”
    telnet 10.72.0.130 80
    telnet 10.72.0.130 443
    telnet 10.72.0.130 44

    telnet 10.72.0.22 80
    telnet 10.72.0.22 443
    telnet 10.72.0.22 44

    telnet 10.72.0.6 80
    telnet 10.72.0.6 443
    telnet 10.72.0.6 44
    ```

    Bisa dilihat ketika di hari Jumat pada jam Jumatan, telnet tidak bisa dilakukan sementara bila diluar bisa. Telnet pada port selain 80 dan 443 juga tidak bisa dilakukan.

- Explanation

      Kita bisa memenuhi permintaan soal dengan menyisipkan satu rule tambahan di atas rule nomor 5. Kita bisa lakukan dengan command `iptables -I INPUT 3 -p tcp -m multiport --dports 80,443 -m time --timestart 11:00 --timestop 13:00 --weekdays Fri -j DROP` yang akan menyisipkan satu rule baru di urutan ketiga yang akan mendrop packet dengan kriteria protokol tcp, port 80 dan 443, dari jam 11.00-13.00 dan pada hari Jumat. Lakukan saving dan testing dengan client. (Gunakan date --set untuk mengubah waktu)

  <br>

## Soal 7

> Tambahkan logging paket yang di-drop di setiap node server dan router.

> _Enable logging for dropped packets on every server node and router._

**Answer:**

- Screenshot

Webserver

![nomor7Sonoko](https://github.com/user-attachments/assets/0bf3d214-48e7-4fbb-8519-4f8c6772bf45)
![nomor7Megure](https://github.com/user-attachments/assets/84e13fe2-eaff-4e3b-ae01-4ce93c32f2ad)
![nomor7Conan](https://github.com/user-attachments/assets/c256ff56-5a1b-409b-b903-cbad5c048a20)

Router-router

![nomor7Agasa](https://github.com/user-attachments/assets/45761fae-bd51-4da2-949e-f0dfae1bddf3)
![nomor7Mitsuhiko](https://github.com/user-attachments/assets/ce6159ad-1bc4-4224-a788-771b7d2633ba)
![nomor7Kazuha](https://github.com/user-attachments/assets/1325a6c8-c7d8-4734-b43c-d05dbd418518)
![nomor7Heiji](https://github.com/user-attachments/assets/148f0568-77a2-4c08-a730-1d7ec56b8f4f)
![nomor7Ayumi](https://github.com/user-attachments/assets/30547a30-301e-464f-90a0-c25333ec784f)

Heiji untuk testing log

![nomor7HeijiTesting](https://github.com/user-attachments/assets/3293ed78-2578-4ba0-b14a-da711d4c15e6)

Log

Conan Log

![nomor7ConanLog](https://github.com/user-attachments/assets/66850bc8-ff0e-4b3f-a83a-11eeba7d94e9)

Sonoko Log

![nomor7SonokoLog](https://github.com/user-attachments/assets/3b8eeef4-39c7-4d63-8a5b-89269d84f00c)

Megure Log

![nomor7MegureLog](https://github.com/user-attachments/assets/c127d599-a2d0-4268-bb07-3d94cf5bcf79)

Heiji Log

![nomor7HeijiLog](https://github.com/user-attachments/assets/8276881a-eccf-4458-b80a-1f5bc0e51c3a)

Testing

Router Testing

![nomor7RouterTesting](https://github.com/user-attachments/assets/cd0d9e6a-f441-4434-8d7f-641a40948c6c)

Ran Testing

![nomor7RanTesting](https://github.com/user-attachments/assets/c2835b9f-26f8-49de-abbd-043161891a1b)

Haibara Testing

![nomor7HaibaraTesting](https://github.com/user-attachments/assets/47c7580a-2f09-4670-915f-8e0be6c530b2)

- Configuration

Setup.sh (sebelum config router dan webserver)

```
apt-get update
apt-get install ulogd2 -y
service ulogd2 start
cp /etc/ulogd.conf /root/ulogd.conf
```

Router

```
iptables -F
iptables -A INPUT  -m conntrack --ctstate INVALID -j NFLOG --nflog-prefix "DROPPED INPUT: " --nflog-group 0
iptables -A FORWARD -m conntrack --ctstate INVALID -j NFLOG --nflog-prefix "DROPPED FORWARD: " --nflog-group 0
iptables -A OUTPUT -m conntrack --ctstate INVALID -j NFLOG --nflog-prefix "DROPPED OUTPUT: " --nflog-group 0
iptables-save
```

untuk keperluan setup

```
rm /etc/ulogd.conf
cp /root/ulogd.conf /etc/ulogd.conf
service ulogd2 restart
```

Router untuk keperluan testing

```
iptables -I INPUT 1 -j NFLOG  --nflog-prefix "DROPPED PACKET: "  --nflog-group 0
```

Webserver

```
iptables -I INPUT 2 -p tcp -m tcp --dport 22 -j NFLOG --nflog-prefix "DROPPED INPUT SSH: " --nflog-group 0
iptables -I INPUT 4  -p tcp -m multiport --dports 80,443 -m time --timestart 11:00:00 --timestop 13:00:00 --weekdays Fri -j NFLOG --nflog-prefix "DROPPED INPUT JUMATAN: " --nflog-group 0
iptables -I INPUT 7 -s 10.72.8.0/21 -j NFLOG --nflog-prefix "DROPPED INPUT SUBNET HAIBARA: " --nflog-group 0
iptables -I INPUT 10 -j NFLOG --nflog-prefix "DROPPED INPUT DEFAULT: " --nflog-group 0
iptables -A FORWARD -m conntrack --ctstate INVALID -j NFLOG --nflog-prefix "DROPPED FORWARD: " --nflog-group 0
iptables -A OUTPUT -m conntrack --ctstate INVALID -j NFLOG --nflog-prefix "DROPPED OUTPUT: " --nflog-group 0
iptables-save
```

untuk keperluan setup

```
rm /etc/ulogd.conf
cp /root/ulogd.conf /etc/ulogd.conf
service ulogd2 restart
```

Testing

di Haibara

```
ssh root@10.72.0.130
ssh root@10.72.0.22
ssh root@10.72.0.6

date –set=”2024-12-6 11:00:00”
telnet 10.72.0.130 80
telnet 10.72.0.130 443
telnet 10.72.0.130 44

telnet 10.72.0.22 80
telnet 10.72.0.22 443
telnet 10.72.0.22 44

telnet 10.72.0.6 80
telnet 10.72.0.6 443
telnet 10.72.0.6 44

date –set=”2024-12-2 11:00:00”
telnet 10.72.0.130 80
telnet 10.72.0.130 443
telnet 10.72.0.130 44

telnet 10.72.0.22 80
telnet 10.72.0.22 443
telnet 10.72.0.22 44

telnet 10.72.0.6 80
telnet 10.72.0.6 443
telnet 10.72.0.6 44
```

di Ran

```
date –set=”2024-12-1 11:00:00”
telnet 10.72.0.130 80
telnet 10.72.0.130 443
telnet 10.72.0.130 44

telnet 10.72.0.22 80
telnet 10.72.0.22 443
telnet 10.72.0.22 44

telnet 10.72.0.6 80
telnet 10.72.0.6 443
telnet 10.72.0.6 44
```

- Explanation

Untuk melakukan logging kita bisa menggunakan tambahan tool ulogd2 yang dimana akan mengambil log menjadi userspace dengan menggunakan NFLOG. Tahap pertama kita harus mendownload dan menginstall ulogd2. Kemudian kita bisa mengubah direktori logging pada konfigurasi `/etc/ulogd.conf` dengan mengubah path dibawah bagian `[emu1]`. Logging pada router kita bisa menggunakan rule `iptables -A INPUT  -m conntrack --ctstate INVALID -j NFLOG --nflog-prefix "DROPPED INPUT: " --nflog-group 0` yang akan melakukan logging ketika cstate INVALID (packet invalid seperti kalau ke-drop) dengan prefix/awalan kalimat log yaitu "DROPPED INPUT: " dan pada nflog group 0. Rule bisa ditambahkan untuk chain INPUT, FORWARD, dan OUTPUT sehingga setiap ada packet drop baik masuk, melalui, atau keluar dari router akan di drop. Lakukan save dan testing dengan mengeping ke router tersebut. Akan tetapi, logging pasti tidak akan bekerja karena packet dalam kebanyakan waktu akan berhasil, jadi kita pakai testing saja yang akan melog semua packet yang masuk dengan `iptables -I INPUT 1 -j NFLOG  --nflog-prefix "DROPPED PACKET: "  --nflog-group 0` (kurang lebih sama tetapi kriteria conntrack dihilangkan).

Untuk webserver, sama kita harus mempersiapkan ulogd2 terlebih dahulu. Setelah itu kita bisa menambahkan rule logging dengan kriteria yang sama dengan rule yang mengedrop suatu packet dan diletakkan tepat disebelum rule tersebut. Jadi kita sesuaikan dengan rule-rule soal sebelumnya. Misalkan rule untuk nomor 5, terdapat rule yang akan mengedrop packet yaitu `iptables -I INPUT 4  -s 10.72.8.0/21 -j DROP`. Maka kita bisa tambahkan rule logging dengan kriteria yang sama, tepat sebelum rule tersebut. Sehingga apabila packet akan didrop (sesuai kriteria) akan masuk ke rule logging terlebih dahulu baru akan di drop. Begitu juga untuk rule lainnya. Terakhir lakukan testing pada testcase yang akan mengedrop packet dari node-node lain.

<br>

## Soal 8

> Untuk keperluan maintenance, pilih salah satu Subnet dan lakukan blokir terhadap semua request protokol ICMP (ping) dari luar subnet terhadap subnet tersebut.

> _For maintenance purposes, select one Subnet and block all ICMP (ping) protocol requests from outside the subnet to that subnet._

**Answer:**

- Screenshot

Kazuha

![nomor8Kazuha](https://github.com/user-attachments/assets/c6ada688-c167-41e6-b693-9e951974f6ad)

Testing

![nomor8Testing](https://github.com/user-attachments/assets/4d8579bf-2acc-4e55-9ece-d7cc40614ad3)

- Configuration

  > Kazuha

      ```
      iptables -A INPUT -p icmp -d 10.72.8.0/21 -j REJECT
      iptables -A FORWARD -p icmp -d 10.72.8.0/21 -j REJECT
      iptables-save
      ```

> Testing

```
ping 10.72.8.1
ping 10.72.8.2
```

Bisa dilihat, ping tidak bisa dilakukan tetapi client yang mengeping masih tahu kalau tidak bisa diping, karena pada rule menggunakan REJECT.

- Explanation

  Untuk memblokir ping pada suatu subnet, kita bisa membuat rule firewall pada router yang mengarah ke subnet tersebut dengan menolak atau mendrop semua packet protokol ping yang mengarah ke subnet tersebut. Hal tersebut dapat diterapkan command menjadi `iptables -A INPUT -p icmp -d 10.72.8.0/21 -j REJECT` yang akan memblokir semua packet masuk yang mengarah ke router tersebut pada subnet NID yang diblokir. Kemudian perlu pula ditambahkan `iptables -A FORWARD -p icmp -d 10.72.8.0/21 -j REJECT` untuk memblokir packet-packet yang akan diteruskan oleh router tersebut ke subnet yang ingin di blokir. Terakhir lakukan save dan testing pada client dengan cara diping.

<br>

## Soal 9

> Untuk meningkatkan keamanan, setiap Web Server harus bisa melakukan blok terhadap IP yang melakukan scanning port dalam jumlah yang tidak wajar (maksimal 10 scan port) di dalam selang waktu 1 menit.

> _To enhance security, each Web Server must be able to block IP addresses that perform an excessive number of port scans (a maximum of 10 port scans) within a 1-minute interval._

**Answer:**

- Screenshot

Conan

![nomor9Conan](https://github.com/user-attachments/assets/704f07f5-f7b8-4696-bd84-cec09b84defd)

Megure

![nomor9Megure](https://github.com/user-attachments/assets/f17e9d9e-ccec-45c6-b135-56cd6cce5b0e)

Sonoko

![nomor9Sonoko](https://github.com/user-attachments/assets/5ea4754a-a102-47fb-a4ae-df3a1ed537f4)

Testing

![nomor9Testing1](https://github.com/user-attachments/assets/3edc0e64-2d45-4609-81a3-807e4e6bf9b9)

![nomor9Testing2](https://github.com/user-attachments/assets/0cfbbc3a-ce56-4873-beee-21eb095da329)

Bisa dilihat dari testing, hanya ada 10 packet yang berhasil direspon walaupun packet yang terkirim (transmitted) sudah melebihi 10.

- Configuration

> di tiga webserver

    ```
    iptables -N portscan
    iptables -I INPUT 1 -m recent --name portscan --update --seconds 60 --hitcount 10 -j DROP
    iptables -I INPUT 2 -m recent --name portscan --set -j ACCEPT
    iptables-save
    ```

> testing

```
ping 10.72.0.130
ping 10.72.0.22
ping 10.72.0.6
```

- Explanation

  Untuk melakukan bloking pada portscan, maka kita harus menambahkan beberapa rules ke tiga webserver tersebut. Pertama buat terlebih dahulu chain dengan nama portscan (bebas) dengan command `iptables -N portscan`. Lalu untuk memblokir packet masuk jika sudah melebihi 10 kali scan port dan sudah melebihi 1 menit dapat dilakukan dengan command `iptables -I INPUT 1 -m recent --name portscan --update --seconds 60 --hitcount 10 -j DROP`. Kemudian untuk menerima packet jika tidak memenuhi kriteria blokir (waktunya melebihi 1 menit dan melebihi 10 kali scan port) dapat dilakukan dengan menambahkan command `iptables -I INPUT 2 -m recent --name portscan --set -j ACCEPT` yang akan menambahkan rule menerima packet masuk pada urutan kedua dari filter table. Lakukan testing dengan ping dari node lain.

<br>

## Soal 10

> Akses dari client ke WebServer Conan pada port 80 akan didistribusikan bergantian antara Web Server Conan dan Web Server Sonoko. Sebaliknya akses pada Web Server Sonoko pada port 443 akan didistribusikan bergantian antara Web Server Conan dan Web Server Sonoko. Lakukan evaluasi menggunakan Jmeter terhadap berbagai metode load balancing seperti Round-Robin dan lain-lainnya.

> _Client access to the Conan Web Server on port 80 should be alternated between the Conan Web Server and the Sonoko Web Server. Conversely, access to the Sonoko Web Server on port 443 should be alternated between the Conan Web Server and the Sonoko Web Server. (Evaluate various load balancing methods, such as Round-Robin and others, using JMeter.)_

**Answer:**

- Screenshot

Firewall Kazuha

![nomor10Kazuha](https://github.com/user-attachments/assets/536f0fc9-ee76-44b6-af06-61ce6ca8c15d)

Curl Haibara

![nomor10curlHaibara](https://github.com/user-attachments/assets/fd9f8cb6-d188-4ce9-bfee-dce4bc87a7ad)

Testing Load Balancer

Htop 1

![Htop1](https://github.com/user-attachments/assets/6a265eab-d20d-4d1c-a673-1fff4208e32f)

test.csv 1

![nomor10Test1](https://github.com/user-attachments/assets/bf61b024-ed26-4628-b694-cac97da9cb30)

statistics.json 1

![nomor10Test12](https://github.com/user-attachments/assets/9e0799e3-6943-40b1-bf33-9aa6ea34efd5)

Testing 2

Htop 2

![Htop2](https://github.com/user-attachments/assets/4a205717-4196-4c32-b292-e39dc652649d)

test.csv 2

![nomor10Test2](https://github.com/user-attachments/assets/ccf5da3a-d18c-41e0-a2f2-d38a71f17e76)

statistics.json 2

![nomor10Test22](https://github.com/user-attachments/assets/101e7262-5bc3-4f4b-a2b1-377336330986)

Testing 3

Htop 3

![Htop3](https://github.com/user-attachments/assets/4b2d8e19-20b2-4346-a5ac-f7ad5edf732a)

test.csv 3

![nomor10Test3](https://github.com/user-attachments/assets/34a10465-b8e8-495c-8bf8-8aa385a27999)

statistics.json 3

![nomor10Test32](https://github.com/user-attachments/assets/dc44523e-acc5-4204-b06f-12d63c560146)

- Configuration
  Firewall Kazuha

```
iptables -A PREROUTING -t nat -p tcp -d 10.72.0.130 --dport 80 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 10.72.0.6:80
iptables-save
```

Testing Haibara Firewall

```
curl 10.72.0.130:80
curl 10.72.0.130:80
```

Script setup Conan/Sonoko

```
apt-get update -y
apt-get install nginx -y
apt-get install htop -y

echo 'server {
   listen 80 default_server;
   listen [::]:80 default_server;
   root /var/www/html;
   index index.html index.htm index.nginx-debian.html;
   server_name _;

   location / {                                                                                      try_files $uri $uri/ =404;
   }
}' > /etc/nginx/sites-available/default

rm /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled
service nginx start
service nginx restart
rm /var/www/html/index.nginx-debian.html
cp /root/index.nginx-debian.html /var/www/html/index.nginx-debian.html

```

Load Balancer (Kogoro)

```
apt-get update
apt-get install nginx -y

echo 'upstream lb{
    server 10.72.0.130:80;  # Conan
    server 10.72.0.22:80;   # Sonoko
}

server {
    listen 80;
    server_name _;

    location / {
        proxy_pass http://lb;
    }
}' > /etc/nginx/sites-available/default

rm /etc/nginx/sites-enabled/default

ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

service nginx start

service nginx restart
```

Setup Jmeter (Genta)

```
apt-get update
apt-get install openjdk-11-jre -y
mkdir -p /jmeter
wget -O '/jmeter/a.zip'  https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.6.3.zip
apt-get install unzip -y
unzip -o /jmeter/a.zip -d /jmeter

```

Script jmx Jmeter

```
<?xml version="1.0" encoding="UTF-8"?>
<jmeterTestPlan version="1.2" properties="5.0" jmeter="5.6.3">
  <hashTree>
    <TestPlan guiclass="TestPlanGui" testclass="TestPlan" testname="Test Plan">
      <elementProp name="TestPlan.user_defined_variables" elementType="Arguments" guiclass="ArgumentsPanel" testclass="Arguments" testname="User Defined Variables">
        <collectionProp name="Arguments.arguments"/>
      </elementProp>
    </TestPlan>
    <hashTree>
      <ThreadGroup guiclass="ThreadGroupGui" testclass="ThreadGroup" testname="Thread Group">
        <intProp name="ThreadGroup.num_threads">100</intProp>
        <intProp name="ThreadGroup.ramp_time">1</intProp>
        <boolProp name="ThreadGroup.same_user_on_next_iteration">true</boolProp>
        <stringProp name="ThreadGroup.on_sample_error">continue</stringProp>
        <elementProp name="ThreadGroup.main_controller" elementType="LoopController" guiclass="LoopControlPanel" testclass="LoopController" testname="Loop Controller">
          <stringProp name="LoopController.loops">5</stringProp>
          <boolProp name="LoopController.continue_forever">false</boolProp>
        </elementProp>
      </ThreadGroup>
      <hashTree>

        <HTTPSamplerProxy guiclass="HttpTestSampleGui" testclass="HTTPSamplerProxy" testname="Benchmarking">
          <stringProp name="HTTPSampler.domain">10.72.2.2</stringProp>
          <stringProp name="HTTPSampler.protocol">http</stringProp>
          <boolProp name="HTTPSampler.follow_redirects">true</boolProp>
          <stringProp name="HTTPSampler.method">GET</stringProp>
          <boolProp name="HTTPSampler.use_keepalive">true</boolProp>
        </HTTPSamplerProxy>
        <hashTree/>



        <ResultCollector guiclass="ViewResultsFullVisualizer" testclass="ResultCollector" testname="View Results Tree">
          <boolProp name="ResultCollector.error_logging">false</boolProp>
          <objProp>
            <name>saveConfig</name>
            <value class="SampleSaveConfiguration">
              <time>true</time>
              <latency>true</latency>
              <timestamp>true</timestamp>
              <success>true</success>
              <label>true</label>
              <code>true</code>
              <message>true</message>
              <threadName>true</threadName>
              <dataType>true</dataType>
              <encoding>false</encoding>
              <assertions>true</assertions>
              <subresults>true</subresults>
              <responseData>false</responseData>
              <samplerData>false</samplerData>
              <xml>false</xml>
              <fieldNames>true</fieldNames>
              <responseHeaders>false</responseHeaders>
              <requestHeaders>false</requestHeaders>
              <responseDataOnError>false</responseDataOnError>
              <saveAssertionResultsFailureMessage>true</saveAssertionResultsFailureMessage>
              <assertionsResultsToSave>0</assertionsResultsToSave>
              <bytes>true</bytes>
              <sentBytes>true</sentBytes>
              <url>true</url>
              <threadCounts>true</threadCounts>
              <idleTime>true</idleTime>
              <connectTime>true</connectTime>
            </value>
          </objProp>
          <stringProp name="filename"></stringProp>
        </ResultCollector>
        <hashTree/>

      </hashTree>
    </hashTree>
  </hashTree>
</jmeterTestPlan>
```

Run test dengan

```
cd /jmeter/apache-jmeter-5.6.3/bin/
./jmeter -n -t no10.jmx -l test.csv -e -o ../test
```

Hasil testing dapat dilihat dari

```
cat test.csv
cat ../test/statistics.json
```

- Explanation
Apa alasan saya yang mengerjakan soal 10 dengan cara seperti ini, (yang mungkin berbeda dengan permintaan soal) sudah saya jelaskan alasannya di bagian **Problem** dibawah! (Reynandriel Pramas Thandya 5025231113)

(Penjelasan by Nabil Julian Syah 5025231023)
- Konfigurasi Firewall (Kazuha):
  Mengarahkan permintaan dari port 80 secara bergantian ke dua server (Conan dan Sonoko) menggunakan iptables dengan metode nth (round-robin).
  Simpan konfigurasi dengan iptables-save.

- Testing Firewall (Haibara):
  Uji dengan curl pada port 80 untuk memastikan load balancing berjalan.

- Setup Web Server Conan/Sonoko:
  Instalasi Nginx dan konfigurasi server default untuk melayani permintaan HTTP pada port 80.

- Setup Load Balancer (Kogoro):
  Konfigurasi Nginx sebagai load balancer dengan upstream berisi Conan dan Sonoko. dari pengguna diarahkan ke upstream berdasarkan konfigurasi.

- Setup JMeter:
  Instal JMeter. Buat skrip .jmx yang mengonfigurasi Thread Group dengan 100 pengguna, setiap iterasi mengirimkan 5 permintaan ke server load balancer.

- Eksekusi Pengujian:
  Jalankan pengujian menggunakan JMeter dengan perintah `./jmeter -n -t no10.jmx -l test.csv -e -o ../test`.

- Analisis Hasil:
  Periksa hasil dari file CSV `test.csv` atau JSON statistik `statistics.json` untuk mengevaluasi kinerja berbagai metode load balancing seperti Round-Robin.

<br>
  
## Problems
Ketika praktikum dimulai, saya berusaha mengerjakan soal-soal praktikum secepat mungkin. Hingga saya berhenti pada dua soal yaitu nomor 7 dan nomor 10. Bukan karena saya tidak mencari, malas, dan sebagainya akan tetapi disebabkan soal nomor 7 memang tidak bisa dikerjakan secara generic (tanpa modul tambahan) dan soal nomor 10 tidak bisa dipahami dengan baik. 

Untuk nomor 7 saya akhirnya memutuskan untuk mengerjakan dengan tambahan modul yaitu ulogd2. Karena setelah saya mengulik selama 5 jam sampai tingkat sistem, ternyata modul untuk melisten ke ipv4 kernel tidak ada. Jadi saya tidak punya pilihan lain selain menggunakan ulogd2 yang mengubah kernel space log menjadi user space log.

Untuk nomor 10 saya harus menjelaskan lebih rinci lagi. Berikut penjelasannya!

Pertama di hari praktikum akan berakhir (dan saya memang belum mengerti soal sehingga saya belum mengerjakan), problem-setter nomor 10 berbicara hal berikut di grup chat Jaringan Komputer General:
<br>
![image](https://github.com/user-attachments/assets/f514abc9-fa7d-49c8-a44e-19f21c82324d)


Kemudian ada yang menanyakan:
<br>
![image](https://github.com/user-attachments/assets/a5a02a47-d8fc-40a7-9b16-c1c923e3c822)



Lalu dijawab:
<br>
![image](https://github.com/user-attachments/assets/091f8506-4a9b-4683-b7e6-a417dd7bb9d3)

Disini masih bingung karena sebetulnya katra "LB" masih ambigu dan tidak jelas. Kalau misalkan LB yang dimaksud adalah Kazuha maka bisa diterapkan metode load balancing menggunakan iptables. Akan tetapi jika node yang dimaksud adalah Kogoro maka ya tidak bisa menggunakan iptables. 

Perdebatan pun terjadi hingga akhirnya pada malam hari terakhir praktikum, diputuskan ada extend dan nomor 10 diperbaiki.
Akan tetapi perbaikan nomor 10 tidak berdampak pada perdebatan dan masalah yang ada, malah justru tidak mengubah apa-apa dan masih membuat saya kebingungan. 

Kemudian ada yang bertanya lagi:
<br>
![image](https://github.com/user-attachments/assets/a9b86443-2e0c-45cd-92cb-d6c73664d884)


Ternyata jawabannya berbeda (berkebalikan) dengan statement sebelumnya:
<br>
![image](https://github.com/user-attachments/assets/356f705b-cbc2-4e6a-bddf-514035a3b803)



Jadi disini saya tambah bingung. Kata "LB" yang tidak jelas ditambah metode yang "plin-plan" membuat saya tidak bisa memahami dengan benar apa yang dimaksud dari soal. 

Note: Bahkan masih ada perbaikan di jam 00:34 WIB
<br>
![image](https://github.com/user-attachments/assets/91118a52-79ab-4df1-8b1c-5ae44006cd25)


btw kenapa dah ada yang ngomong gini:
<br>
![image](https://github.com/user-attachments/assets/3803ea7f-f046-4f5b-99d8-975bc195b5b8)


Kesimpulan:
Menurut saya, soal nomor 10 tidak ditulis dengan baik karena apa yang **mungkin** dipahami oleh pembuat tidak dapat tersampaikan dengan baik. Dengan begitu, jika saya tidak dapat memahami soal dengan baik dan mungkin tidak sesuai dengan pemikiran dan apa yang diinginkan oleh pembuat soal. Maka saya akan mengerjakan soal tersebut juga sesuai dengan pemahaman dan pemikiran saya sendiri terhadap soal nomor 10. Walaupun begitu saya tetap mengerjakan sesuai dengan "permintaan" (yang tidak jelas) soal selogis mungkin.

Semoga kedepannya praktikum mata kuliah apapun itu di Teknik Informatika ITS tidak mengalami hal seperti ini lagi. Karena kejadian ini sangat merugikan sekali terhadap praktikan. Saya harap pembuat soal dapat mengevaluasi diri dan menjadi lebih baik lagi. Sekian dari saya terimakasih.





Btw Yep I ve to sleep at 5 again to finish all of this.

## Revisions (if any)

ga ada sih harusnya
