[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/tPVgLsdF)

| Name | NRP | Class |
| ---- | --- | ----- |
| Liem, Alfred Haryanto | 5025241100 | Jaringan Komputer (C) |

`Notes` : Karena lupa untuk mendokumentasi dan mencatat beberapa flag, beberapa foto pada bagian output adalah foto pengambilan flag lagi (bukan flag pertama).


Bukti Submit : 
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416277830932631572/image.png?ex=68c64304&is=68c4f184&hm=c15d46184a75a2a89c2493a7f172c69775184052b9a3f273e175909f0f9b67e7&=&format=webp&quality=lossless&width=3210&height=1914)

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416277956745236491/image.png?ex=68c64322&is=68c4f1a2&hm=2ad10c068259004ac7f9db6e4d813771a681816bb1f893de5bb2188655dd6613&=&format=webp&quality=lossless&width=3210&height=1914)


## Task 1

  

- Flag

  

`JARKOM25{Ja0G_Bbbb4ng3t_S1_0X14JITEB0SPDUS03A3C1UOTT64J6H0xl0vel1v8wdg9rriozfinejnt14bb7_efd2ef0fac0cdc221ad18dd880145fb6}`    

  

> a. Berapa banyak packet yang terekam pada file pcapng?

  

> _a. How many packets are recorded in the pcapng file?_

  

**Answer:** `9596`

  

- Filter expression

  

`-`

  

- Explanation

  

Using `Capture File Properties` to see how much package is captured. 

  

`Wireshark`

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415677439006343188/image.png?ex=68c60e1b&is=68c4bc9b&hm=bd4ad2c357ed9ec2b98661461b8522bdf073cc4bf1a77a66ea195bea4d10094f&=&format=webp&quality=lossless&width=2720&height=2056)
  

- Output result

  

`Terminal`

  

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945988971167785/image.png?ex=68c50df6&is=68c3bc76&hm=ba15a9b9a51b1ade2748468c8e3987af92e94f2ddfaccdbcdbb3fe799291f75d&=&format=webp&quality=lossless&width=3588&height=964)

  

<br>

<br>

  

> b. Ada berapa jenis protocol (total) yang terekam pada traffic?

  

> _b. How many types of protocol (totals) are recorded in the traffic?_

  

**Answer:** `12`

  

- Filter expression

  

`-`

  

- Explanation

  

Using `Protocol Hierarchy` to see lists of protocols.  


`Wireshark`

![img_alt](https://cdn.discordapp.com/attachments/1123949811020873759/1415677493037240380/image.png?ex=68c60e28&is=68c4bca8&hm=7a85730f5813ce7884721bc941c4ae21ad19a88fb891118da5a00e30f9a0dbd0)
  

- Output result

  

`Terminal`

  

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945988971167785/image.png?ex=68c50df6&is=68c3bc76&hm=ba15a9b9a51b1ade2748468c8e3987af92e94f2ddfaccdbcdbb3fe799291f75d&=&format=webp&quality=lossless&width=3588&height=964)

  
  

<br>

<br>

  

> c. Ada berapa jenis protocol berbasis TCP yang terekam pada traffic?

  

> _c. How many types of TCP-based applications protocol are recorded in the traffic?_

  

**Answer:** `8`

  

- Filter expression

  

`-`

  

- Explanation

  

Using the same method, which is `Protocol Hierarchy`,  to see what protocol is under TCP (means it's TCP based).

`Wireshark`

![img_alt](https://cdn.discordapp.com/attachments/1123949811020873759/1415677493037240380/image.png?ex=68c60e28&is=68c4bca8&hm=7a85730f5813ce7884721bc941c4ae21ad19a88fb891118da5a00e30f9a0dbd0)

- Output result

  

`Terminal`

  

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945988971167785/image.png?ex=68c50df6&is=68c3bc76&hm=ba15a9b9a51b1ade2748468c8e3987af92e94f2ddfaccdbcdbb3fe799291f75d&=&format=webp&quality=lossless&width=3588&height=964)

  
  

<br>

<br>

  

> d. Ada berapa banyak packet dengan protokol TCP murni yang terekam pada traffic (tanpa data)?

  

> _d. How many packets with pure TCP protocol are recorded in the traffic (without data)?_

  

**Answer:** `3223`

  

- Filter expression

  

`tcp && !vnc && !telnet && !http && !hipercontracer && !thrift && !sigcomp && !data `

  

- Explanation

  
Filtering by only accepting TCP and remove all of the other protocol, and using `Capture File Properties`. 

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415677349466476624/image.png?ex=68c60e06&is=68c4bc86&hm=1221877dc64524aecb465f40dadafe01c5c7dbbd96d58184a2fbb1ab1a7d9755&=&format=webp&quality=lossless&width=2950&height=1914)
  

- Output result

  

`Terminal`

  

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945988971167785/image.png?ex=68c50df6&is=68c3bc76&hm=ba15a9b9a51b1ade2748468c8e3987af92e94f2ddfaccdbcdbb3fe799291f75d&=&format=webp&quality=lossless&width=3588&height=964)

  
  

## Task 2

  

- Flag

  

`JARKOM25{N1c3_0ne_b4nggg_VBKXXKLGOFyuMM13ysckwrekfjtaghllrxvsyc3r4t0ps86441003001952921269_562ef2d9c366ec63ea3e95aa86891739}`

  

> a. Berapa banyak packet berhasil yang berbasis murni TCP dan memiliki flag [ACK]?
	
  

> _a. How many packets succeed that are pure TCP based and have [ACK] flag?_

  

**Answer:** `3209`

  

- Filter expression

  

`tcp && !vnc && !telnet && !http && !hipercontracer && !thrift && !sigcomp && !data && tcp.flags.ack == 1`

  

- Explanation

  

Same with previous problem, just adding `tcp.flags.ack==1` to list all pure TCP with [ACK] flag. Since there are 2 error package, subtract the total package received by 2. 

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415955276015603824/image.png?ex=68c5169c&is=68c3c51c&hm=46e2c3c2b99c12c986b39e9890b6227c240033964bd6caaf9e702a3ad1fcf2cf&=&format=webp&quality=lossless&width=3076&height=1850)

  

- Output result

  

`Terminal`

  

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415943848831750144/image.png?ex=68c50bf8&is=68c3ba78&hm=7dc6faee7d2a867ddfa3545282e69840b305316c1109855763f4a0ece40399af&=&format=webp&quality=lossless&width=3588&height=852)

  

<br>

<br>

  

> b. Berapa banyak packet berhasil yang berbasis murni TCP yang hanya memiliki flag [ACK]?

  

> _b. How many packets succeed that are pure TCP based and have only [ACK] flag?_

  

**Answer:** `3172`

  

- Filter expression

  

`tcp && !vnc && !telnet && !http && !hipercontracer && !thrift && !sigcomp && !data && tcp.flags.ack == 1 && tcp.flags.fin == 0 && tcp.flags.push == 0 && tcp.flags.syn == 0`

  

- Explanation


There are TCP with combined flag, just applying the filter to only showing the TCP with [ACK] flag, then using `Capture File Properties`.

`Wireshark`

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415957081902546954/image.png?ex=68c5184b&is=68c3c6cb&hm=ff708544bc8c8df884e8678deac39b5dead669ada7df951bc660a4874828919c&=&format=webp&quality=lossless&width=3076&height=1850)

  

- Output result

  

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415943848831750144/image.png?ex=68c50bf8&is=68c3ba78&hm=7dc6faee7d2a867ddfa3545282e69840b305316c1109855763f4a0ece40399af&=&format=webp&quality=lossless&width=3588&height=852)

  

<br>

<br>

  

> c. Berapa banyak packet berhasil yang berbasis murni TCP dan memiliki flag selain hanya [ACK]?

  

> _c. How many packets succeed that are pure TCP based and contain flags other than just [ACK] flag?_

  

**Answer:** `49`

  

- Filter expression

  

`tcp && !vnc && !telnet && !http && !hipercontracer && !thrift && !sigcomp && !data && (tcp.flags.fin == 0 || tcp.flags.push == 0 || tcp.flags.syn == 0)`

  

- Explanation


Using filtering to only list flags withouth [ACK] flag.

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415684871711359067/image.png?ex=68c56c47&is=68c41ac7&hm=4a22d3db9992199ff23230c4f03cafd56bd9fdf397b440647e668bc84001ffe8&=&format=webp&quality=lossless&width=2090&height=2122)

  

- Output result

  

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415943848831750144/image.png?ex=68c50bf8&is=68c3ba78&hm=7dc6faee7d2a867ddfa3545282e69840b305316c1109855763f4a0ece40399af&=&format=webp&quality=lossless&width=3588&height=852)

  

<br>

<br>

  

## Task 3

  

- Flag

  

`JARKOM25{W0w_Y0uU_h4V33e_d0n3_444_90od_j0bB_0IZUWg0dl1k3rfwup44ejnvvanokidtqet_6a9d384a9d52ffa0cd6cdf7ab4331aa2}`

  

> a. Pada port berapa client telnet terbuka?

  

> _a. In what port is the telnet client open?_

  

**Answer:** `54184`

  

- Filter expression

  

`telnet`

  

- Explanation

Telnet server usually use 23 as port, and client tends to have bigger number of ports. So by checking one package, i assume the client port is the `54184` because 23 is port for server.

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416218772913651762/image.png?ex=68c60c03&is=68c4ba83&hm=23e0c2da9065d53ef0605e257e91e7736ddcc65b028408af4d8447cac024fe60&=&format=webp&quality=lossless&width=3314&height=1914)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944119293050991/image.png?ex=68c5b4f9&is=68c46379&hm=bffbae746ca0ff391bba1e5827a508ff999ea9d7d1d3c4e67140c5161c296da7&=&format=webp&quality=lossless&width=3712&height=1018)

  

<br>

<br>

  

> b. Berapa byte file response yang dikirim dari server?

  

> _b. How many bytes of the response files are sent from the server?_

  

**Answer:** `1449`

  

- Filter expression

  

`telnet && ip.src == 172.16.16.102`

  

- Explanation

Filtering the IP source to the server's IP, then using `Protocol Hierarchy` to check how many bytes of respond file are sent. 

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416220630109388870/image.png?ex=68c60dbe&is=68c4bc3e&hm=1c563ce9fd540743eb399776d6c4ad2774e162932e793f4d66be563e4a7a8de9&=&format=webp&quality=lossless&width=3314&height=1914)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944119293050991/image.png?ex=68c5b4f9&is=68c46379&hm=bffbae746ca0ff391bba1e5827a508ff999ea9d7d1d3c4e67140c5161c296da7&=&format=webp&quality=lossless&width=3712&height=1018)

  

<br>

<br>

  

> c. Apa username yang digunakan client telnet untuk berhubungan dengan server?

  

> _c. What telnet client's username is used to connect with the server?_

  

**Answer:** `jovyan`

  

- Filter expression

  

`telnet && ip.src == 172.16.16.102`

  

- Explanation

Using `Follow TCP Stream`, turns out it's like a terminal log. By looking on it i assume the username is `jovyan`.  

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416221453535412234/image.png?ex=68c60e82&is=68c4bd02&hm=55ca12bf732f50f8eb81bc5ec59d05f1a2f213f021a6bd3c35aa4e7994699d67&=&format=webp&quality=lossless&width=3314&height=1914)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944119293050991/image.png?ex=68c5b4f9&is=68c46379&hm=bffbae746ca0ff391bba1e5827a508ff999ea9d7d1d3c4e67140c5161c296da7&=&format=webp&quality=lossless&width=3712&height=1018)

  

<br>

<br>

  

> d. Apa password client telnet?

  

> _d. What is the telnet client's password?_

  

**Answer:** `123`

  

- Filter expression

  

`telnet && ip.src == 172.16.16.102`

  

- Explanation

Using the same method but now filtering the package only from the user source, the password itself is written on the log, which is `123`.

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416493411695071414/image.png?ex=68c70bca&is=68c5ba4a&hm=d1808b1e17a9c5102ca6054043aeeef00fa0428c44d252130271da1500ed2723&=&format=webp&quality=lossless&width=3180&height=1914)`

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944119293050991/image.png?ex=68c5b4f9&is=68c46379&hm=bffbae746ca0ff391bba1e5827a508ff999ea9d7d1d3c4e67140c5161c296da7&=&format=webp&quality=lossless&width=3712&height=1018)`

  

<br>

<br>

  

## Task 4

  

- Flag

  

`JARKOM25{G04t__a4n4liz333er_M9E3IJAK2W3TEIYWP82Cfr0gfw9zj1s38irkgckr3ys6579120740_6858ae2800120055616ed9e929402894}`

  

> a. Apa perintah pertama yang ditulis client pada koneksi telnet?

  

> _a. What is the first command that client wrote on telnet connection?_

  

**Answer:** `echo`

  

- Filter expression

  

`telnet`

  

- Explanation

  Using `Follow TCP Stream` like the previous method, we can see the first command which is `echo` after the user insert their password. 

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416493411695071414/image.png?ex=68c70bca&is=68c5ba4a&hm=d1808b1e17a9c5102ca6054043aeeef00fa0428c44d252130271da1500ed2723&=&format=webp&quality=lossless&width=3180&height=1914)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944557677514813/image.png?ex=68c65e21&is=68c50ca1&hm=8bba470d5ba72ad57e6fc6249d438405028331cb68509914a7c112d17353107b&=&format=webp&quality=lossless&width=3712&height=886)

  

<br>

<br>

  

> b. Apa nama file .txt di server (ditulis bersama ekstensinya)?

  

> _b. What is the name of .txt file on the server (write with the extension)?_

  

**Answer:** `test.txt`

  

- Filter expression

  

`telnet`

  

- Explanation

  
Using the same methode like previous problem, but filtering to show the package sent from the server. We can see another terminal log, where the user use `ls` to list the files which also contain the `test.txt`. 

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416504444983443617/image.png?ex=68c71611&is=68c5c491&hm=174b9fac607d782c360112d09a47942f5f79cbcf83391f22df016dd6b38b16e4&=&format=webp&quality=lossless&width=3180&height=1914)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944557677514813/image.png?ex=68c65e21&is=68c50ca1&hm=8bba470d5ba72ad57e6fc6249d438405028331cb68509914a7c112d17353107b&=&format=webp&quality=lossless&width=3712&height=886)

  

<br>

<br>

  

> c. Apa kata pertama dari frasa yang dimasukkan client ke dalam file sebelumnya?

  

> _c. What is the first word that the client inserted into the previous file?_

  

**Answer:** `Jarkom`
  

- Filter expression

  

`Telnet`

  

- Explanation

Using the same method, after the user use `cat` on `test.txt`, we can see the content which is `Jarkom Gampang`, so the first word is `Jarkom`


`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416504444983443617/image.png?ex=68c71611&is=68c5c491&hm=174b9fac607d782c360112d09a47942f5f79cbcf83391f22df016dd6b38b16e4&=&format=webp&quality=lossless&width=3180&height=1914)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944557677514813/image.png?ex=68c65e21&is=68c50ca1&hm=8bba470d5ba72ad57e6fc6249d438405028331cb68509914a7c112d17353107b&=&format=webp&quality=lossless&width=3712&height=886)

  

<br>

<br>

  

## Task 5

  

- Flag

  

`JARKOM25{n4il0ng_m1lk_dr4g000n_83LXM4DESNYNAX14R1WDIGAKFD65DAcr0cowyarmxi0mtbu982c1ylb434_6ce83b09e372ef0d3bb75ea719bb4782}`

  

> a. Berapa banyak packet berbasis HTTP yang terekam pada file pcapng?

  

> _a. How many HTTP packets are recorded in the pcapng file?_

  

**Answer:** `298`

  

- Filter expression

  

`http`

  

- Explanation

  Using `http` as filter, then use `Capture File Properties`. We can see all of the http package that gets recorded.

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416508902127828992/image.png?ex=68c71a37&is=68c5c8b7&hm=f98e261dc65fe167ed9207919a0762d95f8289173920e705077ba0e2a4193f01&=&format=webp&quality=lossless&width=1100&height=662)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944796744323181/image.png?ex=68c7071a&is=68c5b59a&hm=71a3ec8003617351a5915ba99a6ba9b87ddbddedd8857d9e844acc144c4ccc15&=&format=webp&quality=lossless&width=3712&height=986)

  

<br>

<br>

  

> b. Ada berapa HTTP packet yang berupa response?

  

> _b. How many response HTTP packets are recorded in the traffic?_

  

**Answer:** `149`

  

- Filter expression

  

`http.response`

  

- Explanation

  Adding `.response` to the filter and repeat the step of the prevous problem. 

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416512112204714015/image.png?ex=68c71d35&is=68c5cbb5&hm=7cde644ad9e790a617ae595f98cf230113e69ba665c83fc23c3297d9d9e7fc58&=&format=webp&quality=lossless&width=1100&height=662)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944796744323181/image.png?ex=68c7071a&is=68c5b59a&hm=71a3ec8003617351a5915ba99a6ba9b87ddbddedd8857d9e844acc144c4ccc15&=&format=webp&quality=lossless&width=3712&height=986)
  

<br>

<br>

  

> c. Ada berapa paket berbasis HTTP yang berhasil?

  

> _c. How many HTTP packets that succeed?_

  

**Answer:** `296`
  

- Filter expression

  

`http`

  

- Explanation

  Using the same method as the 1st problem, but since there exist 2 "error/failed" package (TCP Previous Segment not Captured) we subtract the total http package captured by 2. 

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416512609309687869/image.png?ex=68c71dab&is=68c5cc2b&hm=486fd55305dea68d9d72604f388b0c535eb2fd83b2ac3187d7476b194f9b9776&=&format=webp&quality=lossless&width=1100&height=662)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944796744323181/image.png?ex=68c7071a&is=68c5b59a&hm=71a3ec8003617351a5915ba99a6ba9b87ddbddedd8857d9e844acc144c4ccc15&=&format=webp&quality=lossless&width=3712&height=986)

  

<br>

<br>

  

> d. Apa alamat IP dari client HTTP yang tersambung lokal dengan mesin lain?

  

> _d. What is the client HTTP IP Address in connection with other local machine?_

  

**Answer:** `172.16.16.101`

  

- Filter expression

  

`http`

  

- Explanation

  By checking one of the package if we look at the source/destination port, server port tends to have lower number. Since in the image the source is user, it means that the ip `172.16.16.101` is the user's IP

`Wireshark`

![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416513556094128199/image.png?ex=68c71e8d&is=68c5cd0d&hm=03949948536b2bfc804fbd0f39735a75f6d6b62c60f513a3538a1e5b52d4b987&=&format=webp&quality=lossless&width=3180&height=1914)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415944796744323181/image.png?ex=68c7071a&is=68c5b59a&hm=71a3ec8003617351a5915ba99a6ba9b87ddbddedd8857d9e844acc144c4ccc15&=&format=webp&quality=lossless&width=3712&height=986)


  

<br>

<br>

  

## Task 6

  

- Flag

  

`JARKOM25{y0u_4r3_s0_G00d_1n_F0r3nsic_IF9Z791D4Q964VID8AGPDFO8W8SWTAx45y4n6gq5ymsy3xq7mpz6f5oiyaa5_75b35f3b02dfd4440b363211b17d0529}`

  

> a. Apakah kamu menemukan fake flag? Tuliskan seluruhnya!

  

> _a. Did you find the fake flag? Write it whole!_

  

**Answer:** `FakeFlag{JarkomGampang}`

  

- Filter expression

  

`http contains "flag"`

  

- Explanation 

Searching for the string `flag` in http package, then using `Follow TCP Stream` to see the content which is the fake flag.

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416589296651210914/0FC3FE39-D999-4A64-BBFC-191788157827.png?ex=68c76517&is=68c61397&hm=36255036fe4419862755e947a90ff49467df6373247b310e69ec363c0022467f&=&format=webp&quality=lossless&width=1978&height=1237)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415946232798646314/image.png?ex=68c70870&is=68c5b6f0&hm=721de967c7d85cc1b73e2eed35dbb9777e3e5995cd5916a2b870106dc6f0d37c&=&format=webp&quality=lossless&width=2156&height=437)

  

<br>

<br>

  

> b. Tuliskan username dan password yang tertulis! (format username:password)

  

> _b. Write the written username and password! (format username:password)_

  

**Answer:** `Rey:123`

  

- Filter expression

  

`http contains "pass"`

  

- Explanation

  
Using the filter `http contains "pass"` then use the `Follow HTTP Stream` function, we can see the content of the package which is the username and password.

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416591199850201210/40021189-6FEC-4FB3-B1B3-3B32B4E4BBC5.png?ex=68c766dd&is=68c6155d&hm=676a7056db71882ec0534e69e8a75534be155288e475b08b9a7d0f589bfbad80&=&format=webp&quality=lossless&width=1978&height=1237)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415946232798646314/image.png?ex=68c70870&is=68c5b6f0&hm=721de967c7d85cc1b73e2eed35dbb9777e3e5995cd5916a2b870106dc6f0d37c&=&format=webp&quality=lossless&width=2156&height=437)

  

<br>

<br>

  

## Task 7

  

- Flag

  

`JARKOM25{tr4l4lel0_tr1lil1_xfx272r9e5k3b0s0s0UISD0VPCZZKFOE_03574356c0e47228b86ef26e63b31da9}`

  

> Apa nama gambar yang direquest oleh client? (tulis dengan ekstensinya)

  

> _What is the image that is being requested by the client? (write with its extension)_

  

**Answer:** `donalbebek.jpg`

  

- Filter expression

  

`http.request && (http contains "png" || http contains "jpg" || http contains "jpeg")`

  

- Explanation


I searched for `http.request` package, then searching for the request package that contains image file (filtering with the file extention).

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416595657921396756/576E3084-2039-4E87-8ED9-AF37BB39F904.png?ex=68c76b03&is=68c61983&hm=ee1da6dc0d001a07173b66a6d9daa52b08411286914a0a0d645a232ffc18e681&=&format=webp&quality=lossless&width=990&height=619)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945221904011294/image.png?ex=68c7077f&is=68c5b5ff&hm=1de57077df161f869741b7edbd7966afc77777adbc9653d2b436bbc21619c354&=&format=webp&quality=lossless&width=2156&height=353)

  

<br>

<br>

  

## Task 8

  

- Flag

  

`JARKOM25{br0mb44rdin0u_Cr0ccc0c0c0cdi1l10l_9398606095awaesa6g6wolxrpxsh1n0buKC0UQAQK8MN1LYQ_75e594a79bf5457b6a8e9c5715ddcc58}`

  

> a. Berapa banyak packet berbasis FTP yang terekam pada file pcapng? (with the data)

  

> _a. How many FTP packets are recorded in the pcapng file? (with the data)_

  

**Answer:** `81`

  

- Filter expression

  

`-`

  

- Explanation

Using `Protocol Hierarchy` to look all of the package, turns out ftp have 10 additional data package, which makes the number of package into 81.

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416600769398050886/DE492858-E636-4EAD-9570-72E65DDB52E3.png?ex=68c76fc6&is=68c61e46&hm=aacf26eac491ba39e06f66a4afdf20595c427ba0e6dbdbd6c0b7753d7fc86c05&=&format=webp&quality=lossless&width=1978&height=1237)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415946472159051777/image.png?ex=68c708a9&is=68c5b729&hm=957dea1397ed3e3a9a6e282fcf6afa54dbf0c9851706408463739865f883a70e&=&format=webp&quality=lossless&width=2156&height=499)

  

<br>

<br>

  

> b. Apa username dan password client di koneksi FTP? (tulis dalam format username:password)

  

> _b. What is the client's username and password in FTP connection? (write in following format username:password)_

  

**Answer:** `rey:password123lingangu`

  

- Filter expression

  

`ftp contains "pass"`

  

- Explanation


By using the `ftp contains "pass"` and `Follow TCP Stream`, we can see the content which is the username and password. 

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416601964820561940/29DD2D6A-69FC-43D4-A7B7-92AAAB680AD8.png?ex=68c770e3&is=68c61f63&hm=075c64242afeb679f314a1aa838cbb862cf026fbb1ba4b69ea2fc3970b9c5d54&=&format=webp&quality=lossless&width=1978&height=1237)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415946472159051777/image.png?ex=68c708a9&is=68c5b729&hm=957dea1397ed3e3a9a6e282fcf6afa54dbf0c9851706408463739865f883a70e&=&format=webp&quality=lossless&width=2156&height=499)

  

<br>

<br>

  

> c. What is the client's command for showing server directory that was sent on request packet?

  

> _c. Apa command client untuk melihat direktori server yang dikirimkan dalam request packet?_

  

**Answer:** `LIST`

  

- Filter expression

  

``ftp contains "pass"``

  

- Explanation

Using the same method and we can see the client's command for showing the directory was `LIST`.

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416601964820561940/29DD2D6A-69FC-43D4-A7B7-92AAAB680AD8.png?ex=68c770e3&is=68c61f63&hm=075c64242afeb679f314a1aa838cbb862cf026fbb1ba4b69ea2fc3970b9c5d54&=&format=webp&quality=lossless&width=1978&height=1237)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415946472159051777/image.png?ex=68c708a9&is=68c5b729&hm=957dea1397ed3e3a9a6e282fcf6afa54dbf0c9851706408463739865f883a70e&=&format=webp&quality=lossless&width=2156&height=499)

  

<br>

<br>

  

## Task 9

  

- Flag

  

`JARKOM25{j4rk000000mmm_g4mpp4444n9999999_24949878808i41L4hdtqvx5njv8321k0ncol5TUOUD5I856M5RZ_e18c8058770f11d8442aaf8eab4ac5aa}`

  

> a. Apa alamat IP dari FTP server?

  

> _a. What is the FTP server IP Address?_

  

**Answer:** `172.16.16.101`

  

- Filter expression

  

`ftp`

  

- Explanation

Filtering ftp file and look at one of the package. Since the server port is usually the smaller number, we can see the package that is sent from the server and see the server IP.

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416605221139775579/5C8EF2D3-8949-4649-8C70-A43D2FD64D56.png?ex=68c773eb&is=68c6226b&hm=34246f30849189c88f81b1a14caaeceff583281570ffee6bc4e5b9468532b353&=&format=webp&quality=lossless&width=1978&height=1237)


  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945501156573256/image.png?ex=68c707c2&is=68c5b642&hm=7e6ce5eca4d7526f540693e55f06919aa8cb73fb60be86e330fa5ef3279bb93e&=&format=webp&quality=lossless&width=2156&height=553)

  

<br>

<br>

  

> b. Berapa banyak file yang ada dalam direktori FTP server?

  

> _b. How many files are there inside the FTP server directory?_

  

**Answer:** `7`

  

- Filter expression

  

`ftp-data`

  

- Explanation

Filtering with `ftp-data` then using `Following TCP Stream` to the packet that contain "LIST".

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416608229776953466/84070CCD-6D09-41D0-95E9-E2F24526C75B.png?ex=68c776b9&is=68c62539&hm=a2d3bfbc70bdea05f2d52d9b74e5817a6b5e47b5fea63415e65426bdad7b09a6&=&format=webp&quality=lossless&width=1978&height=1237)

  

- Output result



`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945501156573256/image.png?ex=68c707c2&is=68c5b642&hm=7e6ce5eca4d7526f540693e55f06919aa8cb73fb60be86e330fa5ef3279bb93e&=&format=webp&quality=lossless&width=2156&height=553)

  

<br>

<br>

  

> c. Apa nama dari file yang digunakan dalam page.html? (tulis lengkap namanya beserta ekstensinya dan dipisahkan dengan koma ',')

  

> _c. What are the filenames used in the page.html? (write the filebames with their extensions and separate them with comma ',')_

  

**Answer:** `pokijan.jpg,research_center.jpg`

  

- Filter expression

  

`ftp-data`

  

- Explanation

Same method with the previous problem, but this time on the package that contain `page.html`

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416608642165243954/90F1A79D-508E-4602-A523-1D365136AC8A.png?ex=68c7771b&is=68c6259b&hm=9edb4c04093e7e47cac7175831e6a492c8c2191831e9a8d1773a72fc636556bf&=&format=webp&quality=lossless&width=1978&height=1237)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945501156573256/image.png?ex=68c707c2&is=68c5b642&hm=7e6ce5eca4d7526f540693e55f06919aa8cb73fb60be86e330fa5ef3279bb93e&=&format=webp&quality=lossless&width=2156&height=553)

  

<br>

<br>

  

## Task 10

  

- Flag

  

`JARKOM25{f1nisssshs55s5s533s_l1n333ee333E3_562551443629108avui0r3s7345215123123K36T6RJHGKHMIU1_a5fef588c327428cc531f3cf5a78ec84}`

  

> a. Apa nama file yang mengandung string terencode?

  

> _a. What is the filename that contains encoded string?_

  

**Answer:** `secret.txt`

  

- Filter expression

`ftp`
`ftp-data`
  

- Explanation

Looking at the log, there exist a file called secret.txt. After checking it, it was the file with encoded string.

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416612224562106479/B04582BC-2F75-4F34-B36A-306052077FEB.png?ex=68c77a71&is=68c628f1&hm=f605315b4e5b5f4a28fbbd55ce9a437f6ad01ff6dc216d94e047912df1ebaa60&=&format=webp&quality=lossless&width=1978&height=1237)
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416614250062942228/9D46F6B5-B886-4E69-8729-51CE55AA520C.png?ex=68c77c54&is=68c62ad4&hm=5477d9bf234403f5ec07a56c85d0e853b963f7b3b14bdf82bcd34837c1088b83&=&format=webp&quality=lossless&width=1978&height=1237)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945577782575244/image.png?ex=68c707d4&is=68c5b654&hm=4a040b360c07176f40727b61e7f00d55e08dd7ff5333f6628b7931df06fa55f1&=&format=webp&quality=lossless&width=2156&height=551)

  

<br>

<br>

  

> b. Apa nama file hasil copy file sebelumnya?

  

> _b. What is the filename of the previous file copy?_

  

**Answer:** `secret1.txt`

  

- Filter expression

`ftp`
`ftp-data`

  

- Explanation

  
Scrolling down a bit on the log file, there's another file named secret1.txt, after checking it it contain the same string. 

`Wireshark`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416616489682735125/C1B4D7B8-8D4D-4BA1-AA20-D6551D712F04.png?ex=68c77e6a&is=68c62cea&hm=52b2e6830cef7a3d723b99b2652546ad0cb05da7c6faee03801e833fa880bd72&=&format=webp&quality=lossless&width=1978&height=1237)
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1416616549896163388/70C4B6B7-49AD-49D9-A5A6-C78196D261E5.png?ex=68c77e78&is=68c62cf8&hm=d120937307a14446836246430d519e00092639e94698d45fc7c3c55f2e8e17e2&=&format=webp&quality=lossless&width=1978&height=1237)

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945577782575244/image.png?ex=68c707d4&is=68c5b654&hm=4a040b360c07176f40727b61e7f00d55e08dd7ff5333f6628b7931df06fa55f1&=&format=webp&quality=lossless&width=2156&height=551)

  

<br>

<br>

  

> c. What is the decoded string from the previous file?

  

> _c. Apa decoded string dari file tersebut?_

  

**Answer:** `Pada suatu hari Rey bertemu dengan Nailong the Milk Dragon. Ketika bertemu, Rey mengajarkan Nailong apa itu Jaringan Komputer. Nailong pun senang karena ternyata Jaringan Komputer itu gampang.`

  

- Filter expression

  

`-`

  

- Explanation

I'm using CyberChef to decode the Base64 string. 

`CyberChef`
![img_alt](https://cdn.discordapp.com/attachments/1123949811020873759/1416618221112393829/06265B93-47CD-489B-98CA-15A4AECEB738.png?ex=68c78007&is=68c62e87&hm=2d22e2c483af090d4a56ccbc163406e303bb95987c50396190015668726c5a30&)

  

- Output result

  

`Terminal`
![img_alt](https://media.discordapp.net/attachments/1123949811020873759/1415945577782575244/image.png?ex=68c707d4&is=68c5b654&hm=4a040b360c07176f40727b61e7f00d55e08dd7ff5333f6628b7931df06fa55f1&=&format=webp&quality=lossless&width=2156&height=551)

  

<br>

<br>

  

## Summary
Praktikum modul satu mencakup 2 praktikum yang berbeda. Praktikum pertama yakni menggunakan wireshark seperti yang ada di laporan ini dimana kita harus mencari flag-flag dengan memasukan data-data dari pertanyaan yang diminta. Praktikum kedua adalah crimping dimana kita harus menyambungkan kabel UTP dengan konektor RJ45. Diperlukan kemampuan mengoperasikan wireshark seperti mengetahui fitur-fitur atau function nya dan juga diperlukan kemampuan untuk memahami urutan kabel serta keterampilan menggunakan alat ketika praktikum crimping. 
  

## Problems
Ketika mengerjakan tidak ada namun pada waktu awal website/server dibuka, saya tidak bisa login (problem with credentials). Asdos pun bergerak cepat sehingga tidak membutuhkan waktu lama agar saya bisa login ke websitenya dan mulai mengerjakan. Soal-soal angka kecil seperti nomor 1-4 relatif mudah namun banyak bermain di bagian filtering. Soal angka besar seperti 5-10 sedikit bermain filtering namun menuntut bagi peserta untuk lebih mengkesplor package-package yang ada. Untuk praktikum crimping sendiri juga tidak ada kendala.
