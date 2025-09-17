   # 1. TUJUAN PEMBELAJARAN
- Merancang dan membuat layout halaman Login dan Registrasi.
- Menggunakan widget dasar Flutter seperti Scaffold, Column, TextField, dan ElevatedButton.
- Mengimplementasikan navigasi antar halaman menggunakan Navigator.
- Mengelola state sederhana dan menyimpan data input pengguna.
- Memahami event handling seperti aksi tombol login/registrasi.

   # 2. ALAT YANG DIBUTUHKAN
- Flutter SDK
- Android Studio / VS Code (dengan ekstensi Flutter)
- Emulator Android/iOS atau perangkat fisik

   # 3. ANALISIS PROGRAM
- main.dart
    titik awal aplikasi dan untuk mengatur halaman login awal(homepage)
    ![main.dart](img/image_main.png)

- login_page.dart
    berisi form login dengan input email dan password, jika data cocok dengan user akan diarahkan ke homepage, jika salah muncul gagal login
    ![login_page.dart](img/image_login_page.png)

- register_page.dart
    berisi form untuk registrasi dengan memasukkan nama lengkap, email dan passowrd, data pengguna akan disimpan keuser, jika sukses maka akan muncul alert sukses dan kembali ke halaman login
    ![register_page.dart](img/image_register.png)

- home_page.dart
    halaman utama setelah login dengan akun yang sudah diregistrasikan, lalu menampilkan pesan selamat datang dengan nama pengguna yg telah dimasukkan tadi, kalu ada tombol logout untuk kembali ke halaman login
    ![home_page.dart](img/image_home.png)

- user_data.dart
    disini untuk menyimpan data akun yang sudah ditregistrasikan menggunakan map
    ![user_data.dart](img/image_user.png)

   # 4. OUTPUT PROGRAM
- halaman login
    ![login](img/output_login.png)
- halaman registrasi
    ![registrasi](img/output_registrasi.jpg)
- halaman home
    ![home](img/output_home.png)

   # 5. LATIHAN 
- validasi input
![latihan1](img/latihan1.png)
disesi register tambahkan agar email hanya dapat berhasil jika menggunakan tanda @ menggunakan validasi at
- tampilkan atau sembunyikan password
![latihan2](img/latihan2.png)
  bool _isPasswordVisible = false; tambahkan ini untuk menampilkan atau menyembunyikan password, lalu ditexfield tambahkan obscure password untuk menyembunyikan password
![latihan2.2](img/latihan2.2.png)
tambahkan icon mata untuk tampilan menyembunyikan password dengan cara suffixicon lalu visibility off
- animasi sederhana
![latihan3](img/latihan3.png)
disini menambahkan hero widget agar tampilan animasi menjadi lebih mulus
- simpan sesi login
pertama dipubspec.yaml tambahkan
google_fonts: ^6.2.1
  shared_preferences: ^2.2.2 untuk ekstensi/dependensi import di file lainnya
  lalu tambahkan juga import pada homepage, login page, dan main untuk preferences
![latihan4](img/latihan4.png)
tambahkan dihome page untuk menghapus semua data sesi login
![latihan4.2](img/latihan4.2.png)
tambahkan di login page untuk menyimpan sesi login
![latihan4.3](img/latihan4.3.png)

    # 6. HASIL AKHIR
![latihan4.3](img/hasilpassword.jpg)
hasil saat password disembunyikan
![latihan4.3](img/hasilpassgagal.jpg)
hasil saat registrasi gagal karena tidak menggunakan @
![latihan4.3](img/hasilakhir.jpg)
output akhir