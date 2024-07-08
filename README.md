# Happiness E-Library Dummy Data

Repository ini berisi dataset dummy untuk proyek Happiness E-Library. Dataset ini dibuat untuk mensimulasikan sistem manajemen perpustakaan yang meliputi data perpustakaan, buku, pengguna, peminjaman, dan reservasi (hold).

## Files

- `libraries.csv`: Dataset mengenai informasi perpustakaan, termasuk nama, alamat, dan tanggal pendirian.
- `books.csv`: Dataset mengenai informasi buku, seperti judul, pengarang, genre, penerbit, tanggal publikasi, bahasa, ISBN, dan jumlah ketersediaan.
- `users.csv`: Dataset mengenai pengguna perpustakaan, termasuk username, email, password, dan tanggal registrasi.
- `loans.csv`: Dataset mengenai transaksi peminjaman buku, mencakup tanggal peminjaman, tanggal jatuh tempo, dan tanggal pengembalian (jika sudah dikembalikan).
- `holds.csv`: Dataset mengenai data reservasi buku, termasuk tanggal reservasi, tanggal kedaluwarsa, dan status reservasi.

## How to Use

Anda dapat menggunakan dataset ini untuk mengimpor data ke dalam basis data PostgreSQL atau sistem basis data lainnya. Berikut adalah langkah-langkah umum untuk menggunakan dataset ini:

1. Unduh atau clone repositori ini ke komputer lokal Anda.
2. Buka setiap file CSV untuk melihat struktur data dan pastikan sesuai dengan kebutuhan proyek Anda.
3. Import data CSV ke dalam sistem basis data Anda menggunakan perintah `COPY` pada PostgreSQL atau fungsi impor yang sesuai pada sistem basis data lainnya.

## Example Usage

Berikut adalah contoh penggunaan dasar untuk mengimpor data CSV ke dalam PostgreSQL:

1. Buka terminal atau command prompt.
2. Masuk ke dalam direktori tempat Anda menyimpan file CSV dari repositori ini.
3. Jalankan perintah berikut untuk mengimpor data `libraries.csv` ke dalam tabel `libraries` pada database PostgreSQL:


Gantilah `path/to/libraries.csv` dengan path sesuai lokasi file `libraries.csv` di komputer Anda.

4. Ulangi langkah di atas untuk mengimpor data dari file CSV lainnya (`books.csv`, `users.csv`, `loans.csv`, `holds.csv`) sesuai dengan tabel yang sesuai dalam database Anda.

## License

Tidak ada lisensi khusus yang didefinisikan untuk dataset ini. Anda bebas menggunakan, mengubah, dan mendistribusikan dataset ini sesuai kebutuhan proyek Anda.

## Contributors

- Goldina Raina Putri

Jika Anda memiliki pertanyaan lebih lanjut atau masukan terkait dataset ini, jangan ragu untuk menghubungi saya melalui email atau melalui GitHub.

Terima kasih!


