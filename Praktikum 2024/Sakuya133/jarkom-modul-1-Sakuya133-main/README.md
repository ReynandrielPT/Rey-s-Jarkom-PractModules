[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/tPVgLsdF)

| Name                           | NRP        | Class |
|--------------------------------|------------|-------|
| Ida Bagus Gde Dimas Sutha Maha | 5025241218 | B     |


## Task 1

- Flag

  `JARKOM25{Ja0G_Bbbb4ng3t_S1_SSU386YVIUER7PB76WGRJLRM80ST100xl0vel1ci88spxi49y8gomg6cmjbb5_0d117ef4f3c64e9d836a30bd4e83a05d}`
  <br>
  <img width="1468" height="579" alt="Image" src="https://github.com/user-attachments/assets/9b01c089-ef5a-46d3-88d9-48f5433eb010" />
  <br>

> a. Berapa banyak packet yang terekam pada file pcapng?

> _a. How many packets are recorded in the pcapng file?_

**Answer:** `9596`

- Filter expression

  `nuh uh`

- Explanation

  `Dapat dilihat pada pojok kanan bawah, ada jumlah packet yang tertulis`

- Output result

  <img width="821" height="162" alt="Image" src="https://github.com/user-attachments/assets/59cf4266-a17c-47b0-bb40-8f6d899331d7" />

<br>
<br>

> b. Ada berapa jenis protocol (total) yang terekam pada traffic?

> _b. How many types of protocol (totals) are recorded in the traffic?_

**Answer:** `12`

- Filter expression

  `nuh uh`

- Explanation

  `Untuk soal kali ini, bisa dilihat pada Statistic -> Protocol Hierarchy, dan dapat dilihat semua protocol dan sub protocol yang tersedia`

- Output result

  <img width="2201" height="517" alt="Image" src="https://github.com/user-attachments/assets/22c642cc-9113-4e7a-99be-cb22005e7cfd" />

<br>
<br>

> c. Ada berapa jenis protocol berbasis TCP yang terekam pada traffic?

> _c. How many types of TCP-based applications protocol are recorded in the traffic?_

**Answer:** `8`

- Filter expression

  `nuh uh`

- Explanation

  `Masih sama, pada Protocol Hierarchy, dapat dilihat pada bagian TCP, dan dapat dihitung semua protocol yang berbasis TCP`

- Output result

  <img width="2275" height="377" alt="Image" src="https://github.com/user-attachments/assets/acf733a7-ee99-49ab-9a85-f0143316f2c1" />

  <br>
  <br>

> d. Ada berapa banyak packet dengan protokol TCP murni yang terekam pada traffic (tanpa data)?

> _d. How many packets with pure TCP protocol are recorded in the traffic (without data)?_

**Answer:** `3223`

- Filter expression

  `tcp.len == 0`

- Explanation

  `Pada soal kali ini kita dapat filter dengan command tcp.len == 0, untuk mendapatkan file tcp yang tanpa data, namun entah mengapa jawaban ini salah, namun jawaban yang benar adalah 3223, saya rasa ada sebuah file tcp yang rusak/corrupt atau lain lain, sehingga tidak ter detect oleh filter`

- Output result

  <img width="780" height="100" alt="Image" src="https://github.com/user-attachments/assets/670e1850-e9e7-4251-98f6-0d50d01a6d53" />

## Task 2

- Flag

  `put your flag here`

> a. Berapa banyak packet berhasil yang berbasis murni TCP dan memiliki flag [ACK]?

> _a. How many packets succeed that are pure TCP based and have [ACK] flag?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

> b. Berapa banyak packet berhasil yang berbasis murni TCP yang hanya memiliki flag [ACK]?

> _b. How many packets succeed that are pure TCP based and have only [ACK] flag?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

> c. Berapa banyak packet berhasil yang berbasis murni TCP dan memiliki flag selain hanya [ACK]?

> _c. How many packets succeed that are pure TCP based and contain flags other than just [ACK] flag?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

## Task 3

- Flag

  `put your flag here`

> a. Pada port berapa client telnet terbuka?

> _a. In what port is the telnet client open?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

> b. Berapa byte file response yang dikirim dari server?

> _b. How many bytes of the response files are sent from the server?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

> c. Apa username yang digunakan client telnet untuk berhubungan dengan server?

> _c. What telnet client's username is used to connect with the server?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

> d. Apa password client telnet?

> _d. What is the telnet client's password?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

## Task 4

- Flag

  `put your flag here`

> a. Apa perintah pertama yang ditulis client pada koneksi telnet?

> _a. What is the first command that client wrote on telnet connection?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

> b. Apa nama file .txt di server (ditulis bersama ekstensinya)?

> _b. What is the name of .txt file on the server (write with the extension)?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

> c. Apa kata pertama dari frasa yang dimasukkan client ke dalam file sebelumnya?

> _c. What is the first word that the client inserted into the previous file?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

## Task 5

- Flag

  `put your flag here`

> a. Berapa banyak packet berbasis HTTP yang terekam pada file pcapng?

> _a. How many HTTP packets are recorded in the pcapng file?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

> b. Ada berapa HTTP packet yang berupa response?

> _b. How many response HTTP packets are recorded in the traffic?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

> c. Ada berapa paket berbasis HTTP yang berhasil?

> _c. How many HTTP packets that succeed?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

> d. Apa alamat IP dari client HTTP yang tersambung lokal dengan mesin lain?

> _d. What is the client HTTP IP Address in connection with other local machine?_

**Answer:** `put your answer here`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `put your explanation here`

- Output result

  `put your output result here`

  <br>
  <br>

## Task 6

- Flag

  `JARKOM25{br0mb44rdin0u_Cr0ccc0c0c0cdi1l10l_7288269353awaesajw87ipb5jlsh1n0buX9DRDCQCD3OTRD5_a667af547ae1241eb3049e534691c643}`
  <br>
  <img width="1483" height="758" alt="Image" src="https://github.com/user-attachments/assets/f47f2ad2-d6ca-4125-b0f2-066bb158329a" />
  <br>

> a. Apakah kamu menemukan fake flag? Tuliskan seluruhnya!

> _a. Did you find the fake flag? Write it whole!_

**Answer:** `FakeFlag{JarkomGampang}`

- Filter expression

  `nuh uh`

- Explanation

  `Untuk menyelesaikan soal ini, kita dapat melakukan pendekatan dengan melakukan stream scroll, dan pada salah satu page, terdapat Fake Flag tersebut`

- Output result

  <img width="1483" height="758" alt="Image" src="https://github.com/user-attachments/assets/2f40f91c-62cb-4c2c-9772-6ac29f40eebf" />

  <br>
  <br>

> b. Tuliskan username dan password yang tertulis! (format username:password)

> _b. Write the written username and password! (format username:password)_

**Answer:** `Rey:123`

- Filter expression

  `nuh uh`

- Explanation

  `Kurang lebih sama dengan metode soal a, kita dapat melakukan stream scroll dan didapatkan username dan password tersebut`

- Output result

  <img width="1483" height="758" alt="Image" src="https://github.com/user-attachments/assets/5086e724-af47-43f5-871e-307a670d812e" />

  <br>
  <br>

## Task 7

- Flag

  `JARKOM25{tr4l4lel0_tr1lil1_h463tpsbxwk3b0s0sIIY55URBVMS674T_e5b97e866552b97831a89632ad8a611a}`
  <br>
  <img width="1463" height="459" alt="Image" src="https://github.com/user-attachments/assets/6b4b3762-47ae-488e-82ac-c95bda6737fe" />
  <br>

> Apa nama gambar yang direquest oleh client? (tulis dengan ekstensinya)

> _What is the image that is being requested by the client? (write with its extension)_

**Answer:** `donalbebek.jpg`

- Filter expression

  `put your filter here (if any)`

- Explanation

  `Untuk soal kali ini saya melakukan stream scroll dan didapat file donalbebek.jpg`

- Output result

  `put your output result here`

  <br>
  <br>

## Task 8

- Flag

  `JARKOM25{y0u_4r3_s0_G00d_1n_F0r3nsic_MAEA98G8WY0O7FPNSEYHKAR5FTKDGHx45y4n6ht9aju15y6s2i8bxnrp4aa0_8e6c6e5e902d1674c469746e793e8fd2}`
  <br>
  <img width="1462" height="866" alt="Image" src="https://github.com/user-attachments/assets/e457f0eb-1317-4aa9-9a63-c4f7b4dbed75" />
  <br>

> a. Berapa banyak packet berbasis FTP yang terekam pada file pcapng? (with the data)

> _a. How many FTP packets are recorded in the pcapng file? (with the data)_

**Answer:** `81`

- Filter expression

  `ftp-data||ftp`

- Explanation

  `soal ini lumayan tricky, karena yang ditanya adalah berapa banyak packet yang terekam dengan data, itu berarti bisa saja file ftp yang memiliki data didalamnya, atau sebuah request dan responce yang oke, kita bisa melakukan uji coba  pada angka 10 atau 71 yaitu 10 untuk packet ftp yang memiliki data, dan 71 untuk packet ftp request dan response, namun kedua jawaban itu kurang tepat, kita bisa melakukan penggabungan keduanya, karena kedua kondisi tersebut terhitung benar pada deskripsi soal, dan didapat hasil 81`

- Output result

  <img width="2459" height="1564" alt="Image" src="https://github.com/user-attachments/assets/3f16cb12-b523-4396-8fe4-97dfacd4b170" />

  <br>
  <br>

> b. Apa username dan password client di koneksi FTP? (tulis dalam format username:password)

> _b. What is the client's username and password in FTP connection? (write in following format username:password)_

**Answer:** `rey:password123lingangu`

- Filter expression

  `ftp`

- Explanation

  `Pada soal kali ini kita diminta mencari username dan password dari seorang client di koneksi ftp, karena kemungkinan username dan password didapat saat client login, maka kita bisa filter dengan ftp, untuk mencari request dari client`

- Output result

  <img width="959" height="391" alt="Image" src="https://github.com/user-attachments/assets/15ff2c47-3936-4114-9518-51f9531e1119" />

  <br>
  <br>

> c. What is the client's command for showing server directory that was sent on request packet?

> _c. Apa command client untuk melihat direktori server yang dikirimkan dalam request packet?_

**Answer:** `LIST`

- Filter expression

  `ftp-data`

- Explanation

  `Jawaban untuk soal ini bisa dicari dengan 2 cara, cara ga mau ribet :p, dengan search sendiri di google, atau dicari di file network capture, karena saya anak baik baik jadi saya cari di file network capture, dengan filter ftp-data, ada sebuah command yaitu LIST`

- Output result

  <img width="959" height="391" alt="Image" src="https://github.com/user-attachments/assets/0f95b287-37cb-4717-b838-301d09e509d0" />

  <br>
  <br>

## Task 9

- Flag

  `JARKOM25{j4rk000000mmm_g4mpp4444n9999999_36980870108i41L4h0g372v7wm7321k0ncolXNIB8RSRPTO7VWD_2dde7fb1c780962042ec41474f25e43f}`
  <br>
  <br>
  <img width="1451" height="851" alt="Image" src="https://github.com/user-attachments/assets/9ac2433a-3f64-4b64-9ccf-bcfdedf711db" />

> a. Apa alamat IP dari FTP server?

> _a. What is the FTP server IP Address?_

**Answer:** `172.16.16.101`

- Filter expression

  `ftp`

- Explanation

  `Untuk mencari ip addres dari FTP, kita filter, dengan menggunakan perintah "ftp"`

- Output result

  <img width="2865" height="709" alt="Image" src="https://github.com/user-attachments/assets/cca4aae9-8e27-4c23-992b-f1810926574d" />

  <br>
  <br>

> b. Berapa banyak file yang ada dalam direktori FTP server?

> _b. How many files are there inside the FTP server directory?_

**Answer:** `7`

- Filter expression

  `ftp`

- Explanation

  `Kita bisa melakukan langkah awal dengan menduga duga jenis file seperti txt, dan png dan coba di kolom search, namun hal ini akan menjadi sulit, karena mungkin saja ada ekstensi file yang tidak kita tahu, pendekatan yang saya lakukan berikutnya, yaitu melakukan follow -> stream pada salah satu file, dan melakukan stream scroll, hingga saya menemukan stream yang menampilkan 7 file`

- Output result

  <img width="1639" height="695" alt="Image" src="https://github.com/user-attachments/assets/5f64e96a-0b1c-4203-a446-f00cd9ec7b83" />

  <br>
  <br>

> c. Apa nama dari file yang digunakan dalam page.html? (tulis lengkap namanya beserta ekstensinya dan dipisahkan dengan koma ',')

> _c. What are the filenames used in the page.html? (write the filebames with their extensions and separate them with comma ',')_

**Answer:** `pokijan.jpg,research_center.jpg`

- Filter expression

  `ftp`

- Explanation

  `Pada soal ini kita diminta melihat isi dari file page.html, pendekatan yang dapat dilakukan kurang lebih sama seperti soal B, karena page.html di capture dalam file network capture ini, maka kita bisa melakukan stream scroll hingga menemuka sebuah page, yang berisi syntax dari html, dan ditemukan page tersebut, berisi 2 file, 'pokijan.jpg' dan 'research_center.jpg'.Dari penjelasan soal c, kita harus mengumpulkan kedua file tersebut, dan dipisahkan dengan tanda koma, jawaban dari soal ini lumayan case sensitif, karena harus sesuai 'pokijan.jpg,research_center.jpg', jika dibalik, maka jawaban tetap akan salah `

- Output result

  `<img width="1639" height="695" alt="Image" src="https://github.com/user-attachments/assets/690e3544-5e5d-4e40-8aed-cb0201af20fc" />`

  <br>
  <br>
  <img width="1451" height="851" alt="Image" src="https://github.com/user-attachments/assets/9ac2433a-3f64-4b64-9ccf-bcfdedf711db" />

  <br>
  <br>

## Task 10

- Flag

  `JARKOM25{f1nisssshs55s5s533s_l1n333ee333E3_96130691672910ndhu3fhunb345215123123BX2PSXUYV8PT7AQ_e565e3aaeae74c668a5c8bacb6df8be1}`

> a. Apa nama file yang mengandung string terencode?

> _a. What is the filename that contains encoded string?_

**Answer:** `secret.txt`

- Filter expression

  `nuh uh`

- Explanation

  `Pada soal kali ini, pendekatan pertama yang saya coba adalah melakukan stream scrolling, saya tekan salah satu page dan follow -> stream, dan ada sebuah file yang bertuliskan secret.txt... hmmmmm affan tuh?`

- Output result

  <img width="1002" height="716" alt="Image" src="https://github.com/user-attachments/assets/e2d4549a-4031-4cad-9edf-05d9140c86ac" />

  <br>
  <br>

> b. Apa nama file hasil copy file sebelumnya?

> _b. What is the filename of the previous file copy?_

**Answer:** `secret1.txt`

- Filter expression

  `Nuh uh`

- Explanation

  `Pada soal kali ini, di page yang sama pada stream secret.txt, ada sebuah file secret1.txt, hmmmm apakah ini?`

- Output result

  <img width="1002" height="716" alt="Image" src="https://github.com/user-attachments/assets/e2d4549a-4031-4cad-9edf-05d9140c86ac" />

  <br>
  <br>

> c. What is the decoded string from the previous file?

> _c. Apa decoded string dari file tersebut?_

**Answer:** `Pada suatu hari Rey bertemu dengan Nailong the Milk Dragon. Ketika bertemu, Rey mengajarkan Nailong apa itu Jaringan Komputer. Nailong pun senang karena ternyata Jaringan Komputer itu gampang.`

- Filter expression

  `Nuh uh`

- Explanation

  `Lakukan follow -> stream, dan didapatkan sebuah string panjang, kita bisa coba identify jenis enkripsi yng digunakan menggunakan cipher identifier, dan didapatkan bash64, lakukan decode dan didapat plain textnya`

- Output result

 <img width="720" height="450" alt="Image" src="https://github.com/user-attachments/assets/37539f3d-f1ee-441e-969d-dca7b68d5107" />
 <br>
 <br>
 <img width="1760" height="1244" alt="Image" src="https://github.com/user-attachments/assets/b6966bf6-d425-4e0e-8326-0faa438782a5" />

  <br>
  <br>

## Summary

## Problems
