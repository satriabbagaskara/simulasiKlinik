# Healthcare Database & Data Pipeline (Simulasi Klinik)

Repositori ini berisi perancangan skema basis data, skrip manipulasi data (DDL/DML), serta alur pengolahan data (*data loading*) untuk studi kasus sistem informasi simulasi klinik kesehatan.

## 📌 Fitur Utama & Pengerjaan
* **Perancangan Basis Data**: Pembuatan skema tabel terstruktur (termasuk manipulasi tabel `patients` dan penyesuaian format tanggal) menggunakan SQL.
* **Automated Data Ingestion**: Skrip otomatisasi untuk mengimpor (*load*) multiple berkas data CSV ke dalam tabel basis data secara efisien.
* **Dokumentasi Teknis**: Laporan komprehensif yang memuat penjelasan arsitektur data dan penyelesaian studi kasus.

## 📁 Struktur Berkas
* `create.sql` — Skrip DDL untuk pembentukan skema basis data dan tabel klinik.
* `Script Loading` — Skrip otomatisasi entri/impor berkas CSV ke dalam basis data.
* `Details Report Case Study Data Eng..pdf` — Dokumen laporan teknis lengkap terkait pengerjaan studi kasus.

## 🛠️ Tech Stack
* **Database**: MySQL / Relational Database (RDBMS)
* **Query Language**: SQL
* **Data Processing**: CSV Ingestion / Scripting

## 🚀 Cara Menjalankan
1. Eksekusi `create.sql` pada lingkungan RDBMS untuk membangun struktur basis data.
2. Jalankan `Script Loading` untuk memasukkan seluruh data berkas CSV ke dalam tabel.
3. Buka `Details Report Case Study Data Eng..pdf` untuk membaca dokumentasi teknis secara menyeluruh.

## 📊 Dataset
Dataset yang digunakan dalam simulasi ini berukuran besar dan dapat diunduh melalui tautan berikut:
* [Unduh Dataset Lengkap via Google Drive](https://drive.google.com/drive/folders/1z6LZgxYwBoWJ_gHY4YcNUzDshMAN2j92?usp=drive_link)

