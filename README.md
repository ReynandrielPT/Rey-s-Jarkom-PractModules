# Praktikum Jaringan Komputer

Repositori ini berisi rangkuman tugas, laporan, dan berkas konfigurasi praktikum mata kuliah **Jaringan Komputer (Jarkom)** untuk dua tahun ajaran:

- **Praktikum 2023** – kelas F11
- **Praktikum 2024** – kelas B (beberapa arsip, termasuk milik rekan kelompok/kelas lain)

Sebagian besar isi repositori berupa laporan Markdown, hasil capture Wireshark (`.pcapng`), proyek topologi jaringan (**GNS3**, **Cisco Packet Tracer**), serta perhitungan subnetting (CIDR/VLSM).

---

## Struktur Direktori Utama

- `Praktikum 2023/`
  - `jarkom-1-j24-f11/` – Analisis paket dengan **Wireshark** (file `.pcapng`), soal-jawab seputar packet capture.
  - `jarkom-2-j24-f11/` – Perancangan **topologi jaringan** dasar (GNS3), dokumentasi konfigurasi.
  - `jarkom-3-j24-f11/` – Topologi jaringan lanjutan beserta laporan pengujian (testing report).
  - `jarkom-4-j24-f11/` – Perhitungan **subnetting CIDR/VLSM**, dengan varian laporan Terraform dan non-Terraform.
  - `jarkom-5-j24-f11/` – Topologi jaringan dan **routing** (routing table, rute antar router).

- `Praktikum 2024/`
  - `freddskii/` – Arsip modul 1–4 dan final milik rekan kelas C (`jarkom-modul-*-freddskii-main/`, termasuk versi `revisi`).
  - `Sakuya133/` – Arsip modul 1–4 dan final milik rekan kelas B (`jarkom-modul-*-Sakuya133-main/`, termasuk versi `revisi`).
    - Catatan dari `Praktikum 2023/README.md`: penomoran modul sempat tertukar antar tahun ajaran — Modul 2 tahun 2025 setara Modul 3 di repo ini, dan Modul 3 tahun 2025 setara Modul 2; Modul 4 tahun 2025 merupakan gabungan Modul 4 & 5 sebelumnya.

Setiap folder modul umumnya memiliki:

- `README.md` – Berisi identitas (Nama/NRP/Kelas), jawaban soal, tangkapan layar/topologi, dan tautan pendukung (Google Drive, Google Sheets, dsb).
- `img/` atau `images/` – Gambar topologi dan dokumentasi.
- Berkas proyek seperti `.gns3project` (GNS3) dan `.pkt` (Cisco Packet Tracer).
- Folder `revisi` yang terpisah untuk modul-modul yang direvisi setelah pengumpulan awal.

---

## Cara Menjelajahi Repositori

1. **Pilih tahun praktikum**
   - Untuk arsip 2023: buka folder `Praktikum 2023/`.
   - Untuk arsip 2024: buka folder `Praktikum 2024/`.

2. **Pilih modul**
   - Contoh: `Praktikum 2023/jarkom-4-j24-f11/` untuk modul subnetting tahun 2023.
   - Baca `README.md` di dalam setiap modul untuk soal, jawaban, dan tautan pendukung.

3. **Lihat topologi/hasil capture**
   - Buka file `.gns3project` dengan **GNS3**, atau `.pkt` dengan **Cisco Packet Tracer**.
   - Buka file `.pcapng` dengan **Wireshark** untuk melihat detail paket yang dianalisis pada modul 1.

---

## Konvensi & Tujuan

- Repositori ini berfungsi sebagai **arsip pribadi** dan **bahan belajar publik** tentang praktikum Jaringan Komputer.
- Nama folder mengikuti format: `jarkom-[nomor modul]-[kelas]-[angkatan]/` (2023) atau `jarkom-modul-[nomor]-[nama]-main/` (2024), dengan akhiran `-revisi-` untuk versi yang direvisi.

---

## Catatan Etika Akademik

- Solusi di dalam repositori ini diperuntukkan sebagai **referensi dan bahan belajar**.
- Jika Anda sedang mengambil mata kuliah yang sama, **jangan melakukan plagiasi langsung** terhadap kode, jawaban, atau laporan di sini.
- Gunakan sebagai contoh konsep, pola pengerjaan, atau inspirasi, lalu kerjakan solusi Anda sendiri.

---

# Computer Networking Practicum

This repository contains assignments, reports, and configuration files for the **Computer Networking (Jarkom)** laboratory/practicum over two academic years:

- **Praktikum 2023** – class F11
- **Praktikum 2024** – class B (multiple archives, including classmates'/groupmates' submissions)

Most of the content consists of Markdown reports, Wireshark packet captures (`.pcapng`), network topology projects (**GNS3**, **Cisco Packet Tracer**), and subnetting calculations (CIDR/VLSM).

---

## Top-Level Directory Structure

- `Praktikum 2023/`
  - `jarkom-1-j24-f11/` – Packet analysis with **Wireshark** (`.pcapng` files), Q&A about the captured packets.
  - `jarkom-2-j24-f11/` – Basic **network topology** design (GNS3), configuration documentation.
  - `jarkom-3-j24-f11/` – Advanced network topology plus a testing report.
  - `jarkom-4-j24-f11/` – **CIDR/VLSM subnetting** calculations, with Terraform and non-Terraform report variants.
  - `jarkom-5-j24-f11/` – Network topology and **routing** (routing tables, routes between routers).

- `Praktikum 2024/`
  - `freddskii/` – Modules 1–4 and final project archives from a class C groupmate (`jarkom-modul-*-freddskii-main/`, including `revisi` versions).
  - `Sakuya133/` – Modules 1–4 and final project archives from a class B groupmate (`jarkom-modul-*-Sakuya133-main/`, including `revisi` versions).
    - Note from `Praktikum 2023/README.md`: module numbering shifted between academic years — 2025's Module 2 corresponds to Module 3 in this repo, and 2025's Module 3 corresponds to Module 2; 2025's Module 4 merges the former Modules 4 & 5.

Each module folder typically contains:

- `README.md` – Student identity (Name/NRP/Class), answers to the assignment questions, screenshots/topology images, and supporting links (Google Drive, Google Sheets, etc).
- `img/` or `images/` – Topology diagrams and documentation screenshots.
- Project files such as `.gns3project` (GNS3) and `.pkt` (Cisco Packet Tracer).
- A separate `revisi` folder for modules that were revised after the initial submission.

---

## How to Navigate the Repository

1. **Choose the practicum year**
   - For the 2023 archive: open `Praktikum 2023/`.
   - For the 2024 archive: open `Praktikum 2024/`.

2. **Choose a module**
   - Example: `Praktikum 2023/jarkom-4-j24-f11/` for the 2023 subnetting module.
   - Read the `README.md` inside each module for the questions, answers, and supporting links.

3. **View topology / capture files**
   - Open `.gns3project` files with **GNS3**, or `.pkt` files with **Cisco Packet Tracer**.
   - Open `.pcapng` files with **Wireshark** to inspect the packets analyzed in module 1.

---

## Conventions & Purpose

- This repository serves both as a **personal archive** and a **public learning resource** for Computer Networking practicum materials.
- Folder names follow the pattern: `jarkom-[module number]-[class]-[batch]/` (2023) or `jarkom-modul-[number]-[name]-main/` (2024), with a `-revisi-` suffix for revised versions.

---

## Academic Integrity Notice

- The solutions here are provided as **references and learning material**.
- If you are currently enrolled in a similar course, **do not copy–paste these solutions** into your own submissions.
- Use them to understand the ideas, then implement and write your own solutions.
