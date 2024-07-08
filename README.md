# Happiness-E-Library-Dummy-Data
Deskripsi Proyek
Proyek ini bertujuan untuk menciptakan dataset dummy yang realistis untuk aplikasi e-library Happiness. Dataset ini mencakup data untuk beberapa tabel utama seperti libraries, books, users, loans, dan holds. Data dibuat menggunakan Python dengan bantuan library Faker untuk menghasilkan data palsu yang mirip dengan kondisi nyata.

Struktur Direktori
diff
Copy code
- libraries.csv
- books.csv
- users.csv
- loans.csv
- holds.csv
- README.md
Struktur Data
Setiap file CSV memiliki struktur kolom sebagai berikut:

libraries.csv
library_id: ID unik untuk setiap perpustakaan.
name: Nama perpustakaan.
address: Alamat perpustakaan.
established_date: Tanggal pendirian perpustakaan.
books.csv
book_id: ID unik untuk setiap buku.
library_id: ID perpustakaan tempat buku tersebut tersedia.
title: Judul buku.
author: Penulis buku.
genre: Genre atau kategori buku.
publisher: Penerbit buku.
publication_date: Tanggal publikasi buku.
language: Bahasa buku.
isbn: Nomor ISBN buku.
quantity: Jumlah salinan buku yang tersedia.
users.csv
user_id: ID unik untuk setiap pengguna.
username: Nama pengguna.
email: Alamat email pengguna.
password: Kata sandi pengguna.
registration_date: Tanggal registrasi pengguna.
loans.csv
loan_id: ID unik untuk setiap transaksi peminjaman.
book_id: ID buku yang dipinjam.
user_id: ID pengguna yang melakukan peminjaman.
loan_date: Tanggal peminjaman buku.
due_date: Tanggal jatuh tempo pengembalian buku.
return_date: Tanggal pengembalian buku (jika sudah dikembalikan).
holds.csv
hold_id: ID unik untuk setiap reservasi buku.
book_id: ID buku yang di-reservasi.
user_id: ID pengguna yang melakukan reservasi.
hold_date: Tanggal reservasi buku.
expiry_date: Tanggal kadaluarsa reservasi.
status: Status reservasi (aktif, dilepas, dipinjam).
