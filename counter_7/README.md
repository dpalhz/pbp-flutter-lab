# counter_7

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