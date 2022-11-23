# TUGAS 7: counter_7

Dipa Alhaza - 2106751543 - PBP B

##  Stateless widget dan Stateful widget

Secara sederhana Stateless Widget dapat diartikan sebagai Widget yang tidak dapat dirubah atau tidak akan pernah berubah. Sementara itu, Stateful Widget merupakan widget yang dinamis atau dapat berubah. Berbanding terbalik dengan stateless, stateful widget dapat mengupdate tampilan, merubah warna, menambah jumlah baris dll. Jadi dapat disimpulkan bahwa apapun widget yang dapat berubah maka itulah stateful widget.

## Widget yang digunakan
appbar : Memebuat bar seperti navbar pada halaman
Body :  Merupakan body atau isi dari halaman yang dibuat (dapat sebagai pembatas antara widget satu dan yang lain)
child, chilren : digunakan untuk membuat child pada suatu widget
Text: membuat text
floatingActionButton : buat circular button
Visibility : membuat suatu widget itu visible or not
title: membuat judul
mainAxistAlignment : menetapkan align pada suatu widget
Style: untuk menghias tampilan halaman
padding : memberi atau membuat padding 



## Fungsi dari setState()

Memanggil `setState()` memberi tahu framework bahwa keadaan internal objek ini telah berubah dengan cara yang mungkin memengaruhi _user interface_ di subpohon ini, yang menyebabkan kerangka kerja menjadwalkan pembangunan untuk objek Status ini. Jika hanya mengubah status secara langsung tanpa memanggil `setState()`, kerangka kerja mungkin tidak menjadwalkan pembangunan dan antarmuka pengguna untuk subpohon ini mungkin tidak diperbarui untuk mencerminkan status baru. Secara sederhana `setState()` melalkukan pembaharuan pada UI jika terjadi perubahan pada bagian yang menerapkan pemanggilan tersebut.

## Perbedaan antara Const dan final

`final` identifier/reference selalu menunjuk pada satu objeck yang tetap dan harus langsung di inisialisasi via konstraktor, bisa dideklarasi dimana saja, dibuat saat runtime.
`const`, nilai selalu di asosiasikan pada objek yang sama, dan dibuat ketika proses atau waktu _compile_ , cuma bisa dideklarasikan ketika berada pada top-level atau sebagai static/local variabel.


## Implementasi

1. Membuat proyek flutter baru bernama counter_7 dengan menjalankan `flutter create counter_7`
2. Membuat fungsi `_decrementCounter` untuk decrease counter
3. Membuat kondisi ganjil genap pada Widget `body`
4. Membuat `floatingActionButton` widget untuk button + dan -
5. Membuat fitur show/hide widget dengan menggunakan Widget `Visibility` pada button target
6. Mengisi Children pada tahap 4


# Tugas 8: Flutter Form

## perbedaan Navigator.push dan Navigator.pushReplacement

`Navigator.push()`: Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.

`Navigator.pushReplacement()`: Metode ini digunakan untuk menambahkan rute lain tanpa menambah tumpukan screen (seperti di atas). metode ini mengganti current route dengan route yang ingin dikunjungi atau Ganti rute navigator saat ini yang paling erat menutup konteks yang diberikan dengan mendorong rute yang diberikan dan kemudian membuang rute sebelumnya setelah rute baru selesai dianimasikan.

## Widget yang digunakan
`Scaffold` widget yang menjadi tempat widget-widget lain (layar putih).
`Theme` menentukan warna dan gaya font untuk bagian tertentu dari aplikasi
`drawer` menu navigasi yang tampil penuh pada sisi kanan atau kiri sebuah aplikasi. 
`ListTile` Membuat list daftar yang berisi satu hingga tiga baris teks yang secara opsional diapit oleh ikon atau widget lain.
`Form` mempermudah dalam proses pembuatan dan memberi keamanan lebih pada aplikasi flutter seperti validasi, dan aksi lainnya yang umum terdapat pada sebuah form
`Column` untuk menempatkan widget secara menurun atau vertical
`Container` "Single Child Widget” yang berarti hanya dapat memiliki satu buah child widget saja. Akan tetapi dalam sebuah container kita dapat menempatkan row, column, text atau bahkan container lain.
`Padding` menambahkan padding atau ruang kosong di sekitar widget atau banyak widget.
`Decoration` class utama yang mendefinisikan dekorasi lainnya, seperti `InputDecoration` memberikan animasi atau atribut agar widget lebih interaktif
`DropdownButton` sebuah menu yang menampilkan sebuah daftar data yang fungsinya untuk memilih suatu nilai data itu sendiri untuk di inputkan kedalam suatu data global
`TextButton` membuat button tanpa border atau perubahan elevasi secara default
`Dialog` menampilkan dialog dan mengembalikan hasilnya.

##  jenis-jenis event

onPressed : Event terjadi ketika menekan suatu widget yang di set memiliki event ini.
onTap : Event terjadi ketika widget di tap
onChanged : Event terjadi ketika widget di ubah
onSaved : Event terjadi ketika widget disimpan

##  Cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Cara kerja Navigator seperti screen yang ditumpuk atau pun mengganti tumpukan tersebut (tidak menumpuk seperti stack), setiap kali menggunakan widget ini screen akan mengarahkan ke halaman aplikasi yang dituju. 

## implementasi
1. Membuat drawer pada file `main.dart`,  `list.dart`, dan `form.dart`
2. Membuat class Budget untuk menyimpan objeck yang berisikan judul, nominal dan jenis di `main.dart`
3. membuat widget `Form` pada `form.dart` untuk mengambil input user
4. membuat event pada `Form` di atas dan memasukan datanya kedalam list
5. membuat widget untuk menampilkan data pada list tersebut di file `list.dart`


# Tugas 9: Integrasi Web Service pada Flutter

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu dengan meng-assign hasil get data ke suatu variabel tertentu. Pemanggilannya tidak terlalu rumit, namun cukup menyusahkan dalam mencari key element nantinya, kita harus mengecheck nama key yang ada pada data tersebut secara manual. Alasan tersebut yang menjadikan model sebagai alternatif untuk lebih menata data yang di ambil tersebut. Oleh karena itu, jika data yang di ambil lebih kompleks, fitur model tentunya lebih baik, namun jika hanya sedikit data saja yang diambil, kita tidak perlu membuat model.

## Widget yang digunakan pada tugas 9

Widget sebagian besar sama seperti `tugas 8` atau pun `tugas 7`, namun terdapat beberapa widget yang baru diterapkan pada tugas ini, adalah sebagai berikut.

1. `ListView` menampilkan list child data dengan arah scroll
2. `Row` format tampilan row
3. `SizedBox` membuat sejenis container box, kotak sederhana dengan tinggi dan lebar yang disebutkan atau widget anak di dalamnya
4. `GestureDetector` mendeteksi gestur pengguna
5. `TextSpan` rentang teks yang tidak dapat diubah.
6. `RichText` menampilkan teks yang menggunakan beberapa gaya berbeda

## mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

1. Membuat model yang sesuai dengan data JSON
2. Mengambil data dengan `http.get`
3. Melakukan Decode data pada `no 2` untuk mendapatkan bentuk JSON
4. Melakukan konversi data json menjadi object `MyWatchList` (model yang dibuat diawal)
5. Menampilkan data pada widget yang sesuai dengan `AsyncSnapshot`

## Implementasi

1. Membuat class drawer terpisah pada folder widget, yang mengarahkan pada page-page Apps
2. Membuat Model untuk data JSON susuai dengan tutorial Lab 8
3. Membuat folder page yang berisikan `detail.dart` yang menampilkan detail salah satu objeck MywatchList dan `my_watchlist_page.dart` sebagai list data objeck `MyWatchList`.
4. Menerapkan Bonus dengan memberi checkbox dan eventnya pada List pada no 3, dan memberikan outline warna (untuk membedakan watched dan unwatched movie)
5. Merapikan tampilan widget-widget.
