## Tugas 8 - PBP 2024/2025 Gasal

**Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?**

`const` di Flutter digunakan untuk mendeklarasikan variabel atau widget yang nilai atau bentuknya tidak berubah. Kegunaan utama `const` adalah untuk meningkatkan kinerja aplikasi dengan mengurangi jumlah widget yang perlu dibuat ulang. Dengan menggunakan `const`, Flutter dapat memanfaatkan cache dan mengurangi overhead pembuatan widget.

Keuntungan menggunakan `const` adalah:

* Meningkatkan kinerja aplikasi
* Mengurangi penggunaan memori
* Meningkatkan efisiensi rendering

Sebaiknya kita menggunakan `const` ketika:

* Membuat widget yang tidak berubah, seperti teks atau gambar statis
* Membuat widget yang hanya perlu dibuat sekali, seperti header atau footer

Namun, sebaiknya kita tidak menggunakan `const` ketika:

* Membuat widget yang berubah secara dinamis, seperti widget yang bergantung pada data yang berubah
* Membuat widget yang memerlukan interaksi pengguna, seperti tombol atau form

---

**Jelaskan dan bandingkan penggunaan _Column_ dan _Row_ pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**

Penggunaan `Column` dan `Row` pada Flutter adalah untuk mengatur layout widget secara vertikal dan horizontal. `Column` digunakan untuk mengatur widget secara vertikal, sedangkan `Row` digunakan untuk mengatur widget secara horizontal.

Contoh implementasi `Column`:
```dart
Column(
  children: [
    Text('Widget 1'),
    Text('Widget 2'),
    Text('Widget 3'),
  ],
)
```
Contoh implementasi `Row`:
```dart
Row(
  children: [
    Text('Widget 1'),
    Text('Widget 2'),
    Text('Widget 3'),
  ],
)
```
Perbedaan utama antara `Column` dan `Row` adalah arah pengaturan widget. `Column` mengatur widget secara vertikal, sedangkan `Row` mengatur widget secara horizontal.

---

**Sebutkan apa saja elemen input yang kamu gunakan pada halaman _form_ yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**

Pada halaman form yang saya buat, saya menggunakan elemen input `TextFormField` untuk memasukkan nama produk. Saya juga menggunakan elemen `Text` untuk menampilkan label dan informasi lainnya. Selain itu, saya menggunakan elemen `Button` untuk mengirimkan form.

Terdapat beberapa elemen input Flutter lain yang tidak saya gunakan pada tugas ini, seperti `DropdownButton`, `Checkbox`, dan `Switch`. Elemen-lemen ini dapat digunakan untuk memasukkan data yang lebih kompleks, seperti pilihan dari daftar atau status on/off.

---

**Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**

Untuk mengatur tema dalam aplikasi Flutter agar konsisten, saya menggunakan `ThemeData` yang disediakan oleh Flutter. Saya dapat mengatur warna, font, dan gaya lainnya secara global untuk seluruh aplikasi. Dalam kode saya, saya menggunakan `ThemeData` dalam widget `MaterialApp` untuk mengatur tema aplikasi. Saya juga menggunakan `Theme.of(context)` untuk mengakses tema yang telah diatur dan menggunakannya dalam widget lainnya.

Ya, saya telah mengimplementasikan tema pada aplikasi yang saya buat.

---

**Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**

Untuk menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter, saya menggunakan widget `Navigator` yang disediakan oleh Flutter. Saya dapat menggunakan metode `Navigator.push()` dan `Navigator.pushReplacement()` untuk mengarahkan pengguna ke halaman lain, dan metode `Navigator.pop` untuk kembali ke halaman sebelumnya. Saya juga dapat menggunakan widget `MaterialPageRoute` untuk membuat transisi antar halaman yang lebih halus. Dengan menggunakan `Navigator`, saya dapat mengatur navigasi dalam aplikasi dengan mudah dan efektif.