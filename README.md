# Clotty - Sistem Manajemen Toko Pakaian

![PHP](https://img.shields.io/badge/PHP-Native-777BB4?style=flat-square&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Academic%20Project-success?style=flat-square)

Clotty adalah aplikasi web berbasis PHP Native untuk manajemen toko pakaian yang dikembangkan sebagai project Ujian Akhir Semester. Aplikasi ini mengimplementasikan operasi CRUD (Create, Read, Update, Delete) lengkap untuk mengelola inventori produk dan transaksi penjualan.

## 📋 Deskripsi Project

Project ini merupakan sistem informasi manajemen toko yang fokus pada penjualan produk fashion meliputi:
- Pakaian (Clothes)
- Sepatu (Shoes)
- Celana (Trousers)

Sistem ini dilengkapi dengan fitur manajemen customer dan pencatatan transaksi untuk setiap kategori produk.

## ✨ Fitur Utama

### 1. Manajemen Produk
- **Clothes Management**: CRUD data pakaian
- **Shoes Management**: CRUD data sepatu
- **Trousers Management**: CRUD data celana

### 2. Manajemen Customer
- Tambah data pelanggan
- Edit informasi pelanggan
- Hapus data pelanggan
- Lihat daftar pelanggan

### 3. Manajemen Transaksi
- **Transaksi Clothes**: Pencatatan pembelian pakaian
- **Transaksi Shoes**: Pencatatan pembelian sepatu
- **Transaksi Trousers**: Pencatatan pembelian celana
- Fitur delete untuk setiap jenis transaksi

### 4. Autentikasi
- Sistem login untuk keamanan akses

## 🛠️ Teknologi yang Digunakan

- **Backend**: PHP Native (tanpa framework)
- **Database**: MySQL
- **Frontend**: HTML, CSS, JavaScript
- **Architecture**: MVC-like structure dengan separation of concerns

## 📁 Struktur Project

```
clotty/
│
├── css/                        # Styling files
├── js/                         # JavaScript files
├── img/                        # Image assets
├── database/                   # Database files (SQL dump)
│
├── index.php                   # Landing page / Dashboard
├── login.php                   # Halaman login
├── connect.php                 # Database connection
├── functions.php               # Helper functions
│
├── clothes.php                 # Halaman data pakaian
├── input_clothes.php           # Form input pakaian
├── edit_clothes.php            # Form edit pakaian
├── delete_clothes.php          # Hapus data pakaian
│
├── shoes.php                   # Halaman data sepatu
├── input_shoes.php             # Form input sepatu
├── edit_shoes.php              # Form edit sepatu
├── delete_shoes.php            # Hapus data sepatu
│
├── trousers.php                # Halaman data celana
├── input_trousers.php          # Form input celana
├── edit_trousers.php           # Form edit celana
├── delete_trousers.php         # Hapus data celana
│
├── customer.php                # Halaman data customer
├── input_customer.php          # Form input customer
├── edit_customer.php           # Form edit customer
├── delete_customer.php         # Hapus data customer
│
├── transaction_c.php           # Transaksi clothes
├── input_transaction_c.php     # Input transaksi clothes
├── delete_transaction_c.php    # Hapus transaksi clothes
│
├── transaction_s.php           # Transaksi shoes
├── input_transaction_s.php     # Input transaksi shoes
├── delete_transaction_s.php    # Hapus transaksi shoes
│
├── transaction_t.php           # Transaksi trousers
├── input_transaction_t.php     # Input transaksi trousers
└── delete_transaction_t.php    # Hapus transaksi trousers
```

## 🚀 Cara Instalasi

### Prerequisites
- PHP 7.4 atau lebih tinggi
- MySQL 5.7 atau lebih tinggi
- Web Server (Apache/Nginx)
- XAMPP/WAMP/LAMP (recommended untuk development)

### Langkah Instalasi

1. **Clone repository**
   ```bash
   git clone https://github.com/zyalwfie/clotty.git
   ```

2. **Pindahkan ke direktori web server**
   ```bash
   # Untuk XAMPP
   mv clotty C:/xampp/htdocs/
   
   # Untuk WAMP
   mv clotty C:/wamp64/www/
   ```

3. **Import database**
   - Buka phpMyAdmin (http://localhost/phpmyadmin)
   - Buat database baru dengan nama `clotty` atau sesuai dengan konfigurasi
   - Import file SQL dari folder `database/`

4. **Konfigurasi koneksi database**
   - Buka file `connect.php`
   - Sesuaikan konfigurasi database:
     ```php
     $host = "localhost";
     $username = "root";
     $password = "";
     $database = "clotty";
     ```

5. **Jalankan aplikasi**
   - Buka browser dan akses: `http://localhost/clotty`
   - Login menggunakan kredensial yang tersedia

## 💡 Cara Penggunaan

1. **Login ke Sistem**
   - Akses halaman login
   - Masukkan username dan password
   - Klik tombol login

2. **Mengelola Produk**
   - Pilih menu Clothes/Shoes/Trousers
   - Klik tombol "Tambah" untuk menambah produk baru
   - Gunakan tombol "Edit" untuk mengubah data
   - Gunakan tombol "Hapus" untuk menghapus data

3. **Mengelola Customer**
   - Akses menu Customer
   - Tambah customer baru dengan mengisi form
   - Edit atau hapus data customer yang sudah ada

4. **Melakukan Transaksi**
   - Pilih jenis transaksi (Clothes/Shoes/Trousers)
   - Pilih customer dan produk
   - Input jumlah dan detail transaksi
   - Simpan transaksi

## 🔒 Keamanan

- Sistem login untuk proteksi akses
- Validasi input untuk mencegah SQL injection
- Session management untuk kontrol akses pengguna

## 📝 Catatan Pengembangan

Project ini dikembangkan sebagai bagian dari tugas Ujian Akhir Semester dengan fokus pada:
- Implementasi CRUD menggunakan PHP Native
- Manajemen database dengan MySQL
- Penerapan konsep pemrograman web dasar
- Struktur kode yang terorganisir dan maintainable

## 🤝 Kontribusi

Karena ini adalah project akademik, kontribusi tidak dibuka untuk umum. Namun, feedback dan saran sangat diapresiasi.

## 👨‍💻 Developer

**Zyalwfie**
- GitHub: [@zyalwfie](https://github.com/zyalwfie)
- Project Link: [https://github.com/zyalwfie/clotty](https://github.com/zyalwfie/clotty)

## 📄 Lisensi

Project ini dibuat untuk keperluan akademik dan pembelajaran.

## 📞 Kontak

Jika ada pertanyaan atau saran mengenai project ini, silakan hubungi melalui:
- GitHub Issues: [Create an issue](https://github.com/zyalwfie/clotty/issues)

---

⭐ Jangan lupa berikan star jika project ini bermanfaat!

**Made with ❤️ for Academic Purpose**
