## Tugas 7 - PBP 2024/2025 Gasal

**Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.**

Stateless widget dan stateful widget adalah dua jenis widget dasar dalam Flutter. Stateless widget adalah widget yang tidak dapat berubah setelah dibuat, artinya nilai-nilai propertinya tidak dapat diubah setelah widget tersebut dibuat. Contoh dari stateless widget adalah `Text` atau `Icon`. Sementara itu, stateful widget adalah widget yang dapat berubah setelah dibuat, artinya nilai-nilai propertinya dapat diubah setelah widget tersebut dibuat. Contoh dari stateful widget adalah `Checkbox` atau `TextField`. Perbedaan utama antara keduanya adalah kemampuan untuk mengubah nilai-nilai properti setelah widget dibuat. Stateless widget lebih ringan dan lebih cepat, tetapi tidak dapat berubah, sedangkan stateful widget lebih fleksibel, tetapi memerlukan lebih banyak sumber daya.

---

**Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**

Pada proyek ini, saya menggunakan beberapa widget seperti `MaterialApp`, `Scaffold`, `AppBar`, `Text`, `GridView`, `Card`, `Container`, `Column`, `Row`, `Icon`, `InkWell`, `SnackBar`, dan `Material`. Fungsinya adalah sebagai berikut:

`MaterialApp` digunakan sebagai widget root dari aplikasi Flutter. 

`Scaffold` digunakan untuk membuat struktur dasar dari halaman aplikasi, seperti appBar dan body. 

`AppBar` digunakan untuk membuat appBar yang berisi judul aplikasi. 

`Text` digunakan untuk menampilkan teks pada aplikasi. 

`GridView` digunakan untuk menampilkan daftar item dalam bentuk grid. 

`Card` digunakan untuk membuat kartu yang berisi informasi. 

`Container` digunakan untuk membuat kontainer yang dapat diisi dengan widget lain. 

`Column` dan `Row` digunakan untuk mengatur posisi widget secara vertikal dan horizontal. 

`Icon` digunakan untuk menampilkan ikon pada aplikasi. 

`InkWell` digunakan untuk membuat efek ripple pada widget saat diklik. 

`SnackBar` digunakan untuk menampilkan pesan singkat pada aplikasi. 

`Material` digunakan untuk membuat widget yang memiliki efek material design.

---

**Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**

`setState()` adalah sebuah fungsi yang digunakan dalam Flutter untuk memperbarui state dari sebuah widget. Fungsi ini memungkinkan untuk mengubah nilai dari variabel yang digunakan dalam widget dan memperbarui tampilan widget tersebut secara otomatis. Variabel yang dapat terdampak oleh fungsi `setState()` adalah variabel yang dideklarasikan dalam kelas widget yang menggunakan fungsi tersebut. Contohnya, jika memiliki sebuah variabel `items` yang digunakan dalam widget `GridView`, maka perubahan nilai `items` melalui fungsi `setState()` akan memperbarui tampilan `GridView` secara otomatis.

---

**Jelaskan perbedaan antara const dengan final.**

Dalam Dart, `const` dan `final` digunakan untuk membuat variabel yang tidak dapat diubah nilainya setelah diinisialisasi. Namun, ada perbedaan antara keduanya.

`const` digunakan untuk membuat variabel dengan nilai konstan yang dapat diakses di seluruh aplikasi. Variabel `const` harus diinisialisasi dengan nilai yang dapat dihitung pada waktu kompilasi, seperti angka, string, atau nilai konstan lainnya.

`final` digunakan untuk membuat variabel dengan nilai yang tidak dapat diubah setelah diinisialisasi, tetapi nilai variabel ini dapat dihitung saat runtime. Variabel `final` dapat diinisialisasi dengan nilai yang dihitung pada waktu runtime, seperti variabel yang diambil dari input pengguna atau hasil dari operasi yang kompleks.

Jadi, perbedaan utama antara `const` dan `final` adalah bahwa `const` digunakan untuk nilai konstan yang dihitung pada waktu kompilasi, sedangkan `final` digunakan untuk nilai yang tidak dapat diubah setelah diinisialisasi, tetapi nilai ini dapat dihitung pada waktu runtime.

---

**Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.**

1. **Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.**

Saya membuat sebuah program Flutter baru dengan tema E-Commerce menggunakan perintah `flutter create my_e_commerce_mobile`.

2. **Membuat tiga tombol sederhana dengan ikon dan teks untuk:**
- **Melihat daftar produk (Lihat Daftar Produk)**
- **Menambah produk (Tambah Produk)**
- **Logout (Logout)**

Saya membuat tiga tombol sederhana dengan ikon dan teks di file `menu.dart`. Saya menggunakan widget `Material` dan `InkWell` untuk membuat tombol-tombol tersebut.
```dart
class ItemCard extends StatelessWidget {
  final ItemHomePage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text("Kamu telah menekan tombol ${item.name}")));
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                Icon(
                  item.icon,
                  color: Colors.black,
                  size: 30.0
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black)
                )
              ],
            )
          )
        ),
      ),
    );
  }
}
```
Lalu, saya membuat sebuah list `items` yang berisi beberapa `ItemHomePage` dengan warna yang berbeda-beda.
```dart
  final List<ItemHomePage> items = [
    ItemHomePage("Lihat Daftar Produk", Icons.list, Colors.blue),
    ItemHomePage("Tambah Produk", Icons.add, Colors.yellow),
    ItemHomePage("Logout", Icons.logout, Colors.red)
  ];
```

3. **Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (`Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`).**

Saya mengimplementasikan warna-warna yang berbeda untuk setiap tombol di class `ItemHomePage` yang memiliki properti `color`.
```dart
class ItemHomePage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomePage(this.name, this.icon, this.color);
}
```

4. **Memunculkan `Snackbar` dengan tulisan:**
- **"Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol `Lihat Daftar Produk` ditekan.**
- **"Kamu telah menekan tombol Tambah Produk" ketika tombol `Tambah Produk` ditekan.**
- **"Kamu telah menekan tombol Logout" ketika tombol `Logout` ditekan.**

Saya memunculkan `Snackbar` dengan tulisan ketika tombol-tombol ditekan. Saya menggunakan widget `ScaffoldMessenger` untuk menampilkan `Snackbar`.
```dart
        onTap: () {
          ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text("Kamu telah menekan tombol ${item.name}")));
        },
```

5. **Tambahan: Menampilkan tombol-tombol di layar**
Saya menampilkan tombol-tombol di layar dengan menggunakan widget `GridView`.
```dart
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<ItemHomePage> items = [
    ItemHomePage("Lihat Daftar Produk", Icons.list, Colors.blue),
    ItemHomePage("Tambah Produk", Icons.add, Colors.yellow),
    ItemHomePage("Logout", Icons.logout, Colors.red)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "T-Shop",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      "Welcome to T-Shop",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )                      
                    )
                  ),

                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ItemHomePage item) {
                      return ItemCard(item);
                    }).toList(),
                  )
                ]
              )
            )
          ],
        )
      )
    );
  }
}
```