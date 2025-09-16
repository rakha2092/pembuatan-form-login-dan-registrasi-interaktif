# 📘 Login & Register App (Flutter)

## 1. Tujuan Pembelajaran
- Merancang dan membuat layout halaman **Login** dan **Registrasi**.  
- Menggunakan widget dasar Flutter seperti `Scaffold`, `Column`, `TextField`, dan `ElevatedButton`.  
- Mengimplementasikan navigasi antar halaman menggunakan `Navigator`.  
- Mengelola state sederhana dan menyimpan data input pengguna.  
- Memahami event handling seperti aksi tombol **Login/Registrasi**.  

---

## 2. Alat yang Dibutuhkan
- **Flutter SDK**  
- **Android Studio** / **VS Code** (dengan ekstensi Flutter)  
- **Emulator Android/iOS** atau perangkat fisik  

---

## 3. Analisis Program

### `main.dart`
Titik awal aplikasi, digunakan untuk mengatur halaman awal yaitu **LoginPage**.  
![main.dart](img/image_main.png)

### `login_page.dart`
Berisi form login dengan input **Email** dan **Password**.  
- Jika data cocok → diarahkan ke **HomePage**.  
- Jika salah → muncul pesan gagal login.  
![login_page.dart](img/image_login_page.png)

### `register_page.dart`
Berisi form registrasi dengan input **Nama Lengkap, Email, dan Password**.  
- Data pengguna akan disimpan ke `userData`.  
- Jika berhasil → muncul alert sukses lalu kembali ke halaman login.  
![register_page.dart](img/image_register.png)

### `home_page.dart`
Halaman utama setelah login berhasil.  
- Menampilkan pesan **Selamat Datang** dengan nama pengguna.  
- Terdapat tombol **Logout** untuk kembali ke halaman login.  
![home_page.dart](img/image_home.png)

### `user_data.dart`
Berfungsi untuk menyimpan data akun yang sudah diregistrasikan menggunakan struktur data **Map**.  
![user_data.dart](img/image_user.png)

---

## 4. Output Program

### Halaman Login
![login](img/output_login.png)

### Halaman Registrasi
![registrasi](img/output_registrasi.jpg)

### Halaman Home
![home](img/output_home.png)

---

## 5. Latihan
- [ ] Tambahkan validasi input pada form Login dan Registrasi.  
- [ ] Implementasikan fitur show/hide password menggunakan ikon mata.  
- [ ] Tambahkan animasi **Hero** pada ikon antara Login ↔ Register.  
- [ ] Simpan sesi login menggunakan `shared_preferences`.  
