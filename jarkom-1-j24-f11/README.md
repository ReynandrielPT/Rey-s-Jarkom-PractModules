[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/8b_y5Av8)
| Name | NRP | Kelas |
| --- | --- | ----------|
| Nabil Julian Syah | 5025231023 | Jaringan Komputer (F) |
| Reynandriel Pramas Thandya | 5025231113 | Jaringan Komputer (F) |

## Task 1

> a. Berapa banyak packet yang terekam pada file pcapng?

> _a. How many packets are recorded in the pcapng file?_

**Answer:**

- Flag

  Answer a:`1089`

  `JARKOM24{K4mu_K3r3n_2KEH8N0V1EV1IN3BLNOPS9NIGYIXGV0xL4ugh14jn0r35nj5hhwxbuqqeaa7}`

- Filter expression

  `-`

- Explanation

  `Menggunakan 'capture file properties' dan melihat jumlah paket yang terekam`

- Output result
  #### Wireshark:
  ![wireshark](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/1a-wireshark.png)

  #### Terminal:
  ![terminal](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/1a-terminal.png)

  <br>
  <br>

> b. Ada berapa jenis protocol yang terekam pada traffic

> _b. How many types of protocols are recorded in the traffic?_

**Answer:**

- Flag

  Answer b:`4`

  `JARKOM24{K4mu_K3r3n_2KEH8N0V1EV1IN3BLNOPS9NIGYIXGV0xL4ugh14jn0r35nj5hhwxbuqqeaa7}`
  
- Filter expression

  `-`

- Explanation

  `sorting pada wireshark berdasarkan protokol`

- Output result
  #### Wireshark:
  ![wireshark](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/1ab-wireshark.png)

  #### Terminal:
  ![terminal](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/1ab-terminal.png)

  <br>
  <br>

> c. Sebutkan secara berurutan berdasarkan alfabet menurun dengan koma sebagai separator, contoh: protocol1,protocol2

> _c. List the protocols in descending alphabetical order, separated by commas. Example: protocol1,protocol2_

**Answer:**

- Flag

  Answer c:`HTTP,MDNS,SSDP,TCP`

  `JARKOM24{K4mu_K3r3n_2KEH8N0V1EV1IN3BLNOPS9NIGYIXGV0xL4ugh14jn0r35nj5hhwxbuqqeaa7}`
  
- Filter expression

  `-`

- Explanation

  `sorting pada wireshark berdasarkan protokol`

- Output result

  #### Wireshark:

  ![wireshark](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/1ab-wireshark.png)

  #### Terminal:

  ![terminal](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/1ab-terminal.png)

## Task 2

> a. Berapa banyak packet berbasis TCP yang memiliki flag [RST, ACK]

> _a. How many TCP based packets have the flags [RST, ACK]?_

**Answer:**

- Flag

  Answer a:`411`

  `JARKOM24{W0w_4nother_Sh0t_CEMTEVHOJSH0mptyumqqjhdwzymwsjbqxiuoM4r175218828630392346350}`

- Filter expression

  `tcp.flags==0x14` or `tcp.flags.rst==1 && tcp.flags.ack==1`

- Explanation

  ```
  Melakukan filter pada protokol tcp dengan flag RST dan ACK.
  '0x14' adalah heksadesimal dari gabungan RST dan ACK.
  'tcp.flags.rst==1' memastikan flag RST diaktifkan begitu juga dengan flag ack
  ```

- Output result

  #### Wireshark:

  ![wireshark](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/2a-wireshark.png)

  #### Terminal:

  ![terminal](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/2-terminal.png)

<br>
<br>

> b. Berapa banyak packet berbasis TCP yang memiliki flag [SYN]

> _b. How many TCP based packets have only the [SYN] flag?_

**Answer:**

- Flag

  Answer b: `412`
  
  `JARKOM24{W0w_4nother_Sh0t_CEMTEVHOJSH0mptyumqqjhdwzymwsjbqxiuoM4r175218828630392346350}`
  
- Filter expression

  `tcp.flags.syn == 1 && tcp.flags.ack == 0 `

- Explanation

```
Karena perintah soal hanya flag SYN maka laukan filtering flag selain SYN dipastikan tidak aktif.
SYN biasanya adalah paket yang digunakan untuk melalui proses kondeksi dalam protokol TCP maka saya memutuskan untuk memastikan ACK tidak aktif (proses three handshake)

```

- Output result

  #### Wireshark:

  ![wireshark](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/2b-wireshark.png)

  #### Terminal:

  ![terminal](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/2-terminal.png)

<br>
<br>

> c. Berapa banyak packet berbasis TCP yang memiliki flag ack, tapi tidak memiliki syn, dan tidak memiliki rst?

> _c. How many TCP based packets have the ACK flag but do not have SYN or RST?_

**Answer:**

- Flag

  Answer c: `217`

  `JARKOM24{W0w_4nother_Sh0t_CEMTEVHOJSH0mptyumqqjhdwzymwsjbqxiuoM4r175218828630392346350}`
  
- Filter expression

  `tcp.flags.ack==1 && tcp.flags.syn==0 && tcp.flags.rst==0`

- Explanation

  `Melakukan filter pada flags dari protokol tcp. Flag yang difilter adalah ACK yang tidak memiliki SYN atau RST`

- Output result

  #### Wireshark:

  ![wireshark](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/2c-wireshark.png)

  #### Terminal:

  ![terminal](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/2-terminal.png)

<br>
<br>

## Task 3

> a. Pada port berapa server http terbuka?

> _a. On which port is the HTTP server open?_

**Answer:**

- Flag
  Answer a: `9282`
  
  `JARKOM24{Y0u_4r3_4_g00d_4nalyz3r_3R1R0L1tssdcnu0lxaz11vohmlrfilx}`
  

- Filter expression

   `http`

- Explanation

  `Pada packet yang muncul, terdapat 2 packet dengan protokol HTTP. Ada yang merupakan packet request GET dan packet response yang mengirimkan file text/html. Kemudian pada informasi packet request tersebut terdapat port yang digunakan (dst port) yaitu 9282.`

- Output result
#### Wireshark
![image](https://github.com/user-attachments/assets/7ecc23f8-3512-4cb9-a995-f97f6bad9c27)



#### Terminal
![image](https://github.com/user-attachments/assets/172e3e32-b75f-40c5-a073-016466a3b001)

<br>
<br>

> b. Berapa byte file response yang dikirim dari server

> _b. How many bytes of file response are sent from the server?_

**Answer:**

- Flag
  Answer b: `427`
  
  `JARKOM24{Y0u_4r3_4_g00d_4nalyz3r_3R1R0L1tssdcnu0lxaz11vohmlrfilx}`
  

- Filter expression

  `http` atau sebetulnya lebih baik dengan `http.response`

- Explanation

  `Kemudian pada packet response, bisa dilihat dari informasinya, packet tersebut memuat 427 bytes yang diresponse dari server.`

- Output result
#### Wireshark
![image](https://github.com/user-attachments/assets/281f38e7-c981-402c-9b9e-d4c27dcaec35)


#### Terminal
![image](https://github.com/user-attachments/assets/172e3e32-b75f-40c5-a073-016466a3b001)


<br>
<br>

> c. Berapa jumlah file yang terdapat pada server?

> _c. How many files are there on the server?_

**Answer:**

- Flag

  Answer c: `4`
  
  `JARKOM24{Y0u_4r3_4_g00d_4nalyz3r_3R1R0L1tssdcnu0lxaz11vohmlrfilx}`
  

- Filter expression

  `http.response` atau `http`

- Explanation

  `Pada packet yang meresponse dari server, terdapat text html. File html tersebut memuat suatu list yang berisikan link-link yang menuju ke suatu file. Jumlah dari link pada list tersebut adalah 4.`

- Output result
#### Wireshark
![image](https://github.com/user-attachments/assets/76179346-54ef-44a6-8567-c33303d8e45d)


#### Terminal
![image](https://github.com/user-attachments/assets/172e3e32-b75f-40c5-a073-016466a3b001)


<br>
<br>

> d. Sebutkan nama file secara berurutan berdasarkan alfabet menurun dengan koma sebagai separator, contoh: file1,file2

> _d. List the filenames in descending alphabetical order, separated by commas. Example: file1,file2_

**Answer:**

- Flag

  Answer c: `file.pdf, hello.html,lion.jpg,present.pptx`
  
  `JARKOM24{Y0u_4r3_4_g00d_4nalyz3r_3R1R0L1tssdcnu0lxaz11vohmlrfilx}`

- Filter expression

  `http.response`

- Explanation

  `Sama dengan cara sebelumnya, file-file tersebut disusun sesuai permintaan soal yakni mengurut kebawah berdasarkan alfabet dari nama filenya sehingga menjadi "file.pdf,hello.html,lion.jpg,present.pptx".`

- Output result

#### Wireshark
![image](https://github.com/user-attachments/assets/76179346-54ef-44a6-8567-c33303d8e45d)


#### Terminal
![image](https://github.com/user-attachments/assets/172e3e32-b75f-40c5-a073-016466a3b001)

<br>
<br>

## Task 4

> Protokol apa yang paling banyak terdapat di file hasil capture traffic?

> _Which protocol is the most frequent in the traffic capture file?_

**Answer:**

- Flag
  Answer: `FTP`
  
  `JARKOM24{M4ster_4n4lyzer_02064t1k1BRBPLEFQAIR41sv0k19gxq61]`
  

- Filter expression

  `-`

- Explanation

  `Pada Wireshark, tersedia untuk menampilkan packet-packet berdasarkan porotokol-protokolnya melalui menu Statistic kemudian Protocol Hierarchy. Menu tersebut menampilkan bahwa protokol FTP adalah protokol terbanyak.`

- Output result
#### Wireshark
![image](https://github.com/user-attachments/assets/d106891c-7da0-466e-bb2e-5b8962b9b0d7)


#### Terminal
   ![image](https://github.com/user-attachments/assets/7a60d8d5-8fe5-46b2-920f-b497b19886d3)


<br>
<br>

## Task 5

> Berdasarkan hasil bruteforce, apa user yang tepat dari hasil bruteforce?

> _Based on the brute force results, what is the correct username?_

**Answer:**

- Flag
  Answer: `gedagedigedagedao`
  
  `JARKOM24{He_1s_g3d4g3d1g3d4g3d40_NNAXYPDCHKPSJUNHCOYXMunskydedohkddwpt456517868497}`

- Filter expression

  `-`

  (walaupun tidak menggunakan display filter, pada soal ini fitur find digunakan)
  find sebagai string `pass` atau `user` kemudian `successful`

- Explanation

  `Awalnya dicarilah packet yang merupakan attempt dari user untuk login dengan menggunakan pencarian "pass", karena login pasti membutuhkan password dan username (kalau mencari salah satu pasti mendapat keduanya). Akan tetapi ternyata banyak sekali attempt yang dilakukan user, maka digunakanlah pencarian dengan string kata-kata yang mengindikasikan login user berhasil yaitu "successful". Packet response "Login Successful", merupakan hasil respon dari packet yang di request dari user sebelumya (untuk memasukkan username dan password). Sehingga didapatlah username dari packet request sebelum packet response tersebut yaitu "gedagedigedagedao".`

- Output result

#### Wireshark
![image](https://github.com/user-attachments/assets/7948b0c3-78b7-4cb6-a6c7-d75e3f71797a)

#### Terminal
  ![image](https://github.com/user-attachments/assets/fb2dd262-18d7-448d-9530-abcf6be15389)

<br>
<br>

## Task 6

> Apa password yang tepat?

> _What is the correct password?_

**Answer:**

- Flag

   Answer: `gedagedigedagedoe`
  
  `JARKOM24{h1s_fr1end_1s_g3d4g3d1g3d4g3d03_7O6BKWP777yksnUmxxvonpzrreB4Sur1KNWBZJGADR}`


- Filter expression

   (walaupun tidak menggunakan display filter, pada soal ini fitur find digunakan)
  find sebagai string `pass` atau `user` kemudian `successful`

- Explanation

  `Langkah-langkah yang dilakukan sama seperti task 5, yaitu dengan mencari menggunakan string "pass" dan "successful". Sehingga tepat pada packet diatas (sebelum) packet response "Login Successful", terdapat username dan password user yang benar yaitu "gedagedigedagedao" untuk username dan "gedagedigedagedoe" untuk passwordnya.

- Output result

#### Wireshark
![image](https://github.com/user-attachments/assets/877a30fa-dabe-4dec-90aa-29bc76c008b7)

#### Terminal
  ![image](https://github.com/user-attachments/assets/b4c6600f-3460-4294-9cfc-ec44674cf215)

<br>
<br>

## Task 7

> Pada port berapa telnet yang bisa diakses?

> _On which port is Telnet accessible?_

**Answer:**

- Flag
  Answer: `2423`

  `JARKOM{Gr34t_Sn1ff3r_DN9Q3yksnUmngsfz3qcx3T3t0t78P4I2BtJJ}`

- Filter expression

  `-`

- Explanation

  `Karena telnet adalah protokol jaringan yang memungkinkan kita terhubung dan berinteraksi dengan komputer lain. saya sorting protokol tcp dan mencari flag yang melakukan three handshake dan melihat di port berapa mereka berkomunikasi`

- Output result

  #### Wireshark:

  ![wireshark](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/7-wireshark.png)

  #### Terminal:

  ![terminal](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/7-terminal.png)

<br>
<br>

## Task 8

> Ada berapa file di dalam server?

> _How many files are on the server?_

**Answer:**

- Flag
  Answer: `7`
  
  `JARKOM24{P4ck3t_4n4lyz3r_gvnfVqLhrR3112dhnkgxnrirS1SBEGCJDJIOF}`

- Filter expression

  `-`

- Explanation

   `Sama seperti nomor 7, cari packet yang melakukan three handshake. Kemudian follow streamnya sampai ditemukan perintah "ls" (yang ditampilkan ke bawah). Hingga ditemukan beberapa file yang merupakan file-file yang berada di dalam server.`

- Output result
#### Wireshark
![image](https://github.com/user-attachments/assets/c78e56de-08fb-4523-8f8b-ceb2c16d6a3c)
#### Terminal
![image](https://github.com/user-attachments/assets/24083444-2435-4e60-ae29-c6241cd9fb25)

 
<br>
<br>

## Task 9

> Apa nama file yang dieksekusi oleh user?

> _What is the name of the file executed by the user?_

**Answer:**

- Flag

  Answer: `echo`
  
  ```
  JARKOM24{333ch000_us3r_420708437012YlfsRCQSyTd33d80LJ57KK6Y}
  ``` 

- Filter expression

  `-`

- Explanation
  `Mencari flag yang melakukan three handshake pada protokol TCP (seperti no 7 dan 8). lakukan follow, pada TCP stream lakukan find './' karena untuk mengeksekusi sebuah file (menjalankan) menggunakan comman './' `

- Output result
  ![wireshark](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/9-wireshark.png)

  #### Terminal:

  ![terminal](https://github.com/jarkom-its-j24/jarkom-1-j24-f11/blob/main/screenshot/9-terminal.png)

<br>
<br>

## Task 10

> Apa output dari file dalam bentuk base64 decode?

> _What is the output of the file in base64-decoded form?_

**Answer:**

- Flag
  Answer: `Djumanto mencoba menenangkan kuda kesayangannya. Glukgluk, yang tiba-tiba melompat-lompat di kandang sambil berteriak. 'Tenang, Glukgluk, ini cuma payung. bukan alien!'`
  
  `JARKOM24{tH4ts_1t_w311_d0n3_891765072713377sb9rmj9rb1231421421JRJ26VH1SSYCP1J}`

- Filter expression

  `-`

- Explanation

  `Langkah pertama yang diambil adalah mencari suatu packet (dengan flag tertentu) yang melakukan three handshake pada protocol TCP. Kemudian lakukan follow (sama seperti nomor 9, 8, dan 7), hingga ditemukan suatu rangkaian huruf dan simbol (string) yang terencode. Lalu serangkaian "string" tersebut didecode dengan tool, disini saya pakai tool yang terdapat secara online yaitu "Base64 Decode and Encode". Sehingga didapatlah hasil dari decode base64 dari "string" tersebut yaitu "Djumanto mencoba menenangkan kuda kesayangannya. Glukgluk, yang tiba-tiba melompat-lompat di kandang sambil berteriak. 'Tenang, Glukgluk, ini cuma payung. bukan alien!'".`

- Output result
#### Wireshark
![image](https://github.com/user-attachments/assets/31a626b2-cfdf-4a3a-b3ca-d06976a116d8)


#### Base64
![image](https://github.com/user-attachments/assets/df3635f6-fca9-4e31-ab4a-8c05989d2a34)


#### Terminal
![image](https://github.com/user-attachments/assets/fdd6f150-4445-4e3f-9709-79fa25689031)


<br>
<br>

## Summary
<p align: "justify">
Praktikum Jaringan Komputer 1 mencakup beberapa tantangan. Mulai dari crimping, hingga melakukan Capture The Flag menggunakan Wireshark. Crimping adalah suatu kegiatan menyambungkan kabel UTP dengan RJ45 sebagai konektornya. Pada praktikum tersebut dibutuhkan pengetahuan teori mengenai urutan kabel, dan keterampilan menggunakan alat untuk mempraktikkannya. Kemudian pada praktikum Wireshark, diberikan beberapa soal yang harus diselesaikan. Soal-soal tersebut dapat diselesaikan dengan menganalisis packet capture file dengan menggunakan Wireshark. Diperlukan pengetahuan seperti teori penggunaan Wireshark, display filter, dan find string. Dalam praktiknya, juga diperlukan ketelitian dalam menganalisis packet capture file. Sehingga praktikum Wireshark dapat terselesaikan.
</p>

## Problems
<p align: "justify">
Kesulitan yang dihadapi paling awal adalah koneksi jaringan yang sangat lagging. Ketika praktikum dimulai, untuk membuka suatu soal sangatlah susah karena ngelag. Kemudian setelah koneksi lancar, pengerjaan praktikum dapat dilakukan dengan lancar. Soal-soal angka kecil dapat dikerjakan dengan mudah. Sampai ketika mengerjakan soal nomor 7 sampai 10. Terdapat sedikit kebingungan karena sulit untuk mencari jawaban dari soal. Tetapi akhirnya jawaban dari soal dapat ditemukan dan praktikum dapat terselesaikan.
</p>
