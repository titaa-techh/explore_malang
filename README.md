# Explore Malang

Aplikasi mobile untuk menjelajahi tempat wisata dan kuliner di Kota Malang,
dibangun menggunakan Flutter sebagai tugas UTS Mobile Programming.

## Tema dan Tujuan

Explore Malang bertujuan membantu pengguna (khususnya wisatawan atau
pendatang baru) menemukan rekomendasi tempat wisata dan kuliner populer di
Kota Malang secara ringkas dan mudah dibaca, lengkap dengan rating, lokasi,
dan jam operasional.

## Daftar Halaman

| Halaman | File | Fungsi |
|---|---|---|
| Beranda (Home) | `lib/view/home_page.dart` | Menampilkan sapaan, dua kategori utama (Wisata & Kuliner), serta daftar rekomendasi tempat dengan rating tertinggi. |
| Kategori | `lib/view/category_page.dart` | Menampilkan daftar tempat berdasarkan kategori yang dipilih (Wisata atau Kuliner), diambil dan difilter dari data JSON. |
| Detail | `lib/view/detail_page.dart` | Menampilkan informasi lengkap satu tempat: gambar, rating, kategori, lokasi, jam buka, dan deskripsi. |

Navigasi antar halaman menggunakan `Navigator.push` dengan `MaterialPageRoute`.

## Struktur Data

Data dummy disimpan di `assets/data/places.json` dan dimuat lewat
`lib/data/place_repository.dart` (`PlaceRepository.loadPlaces()`), lalu
dipetakan ke model `lib/model/place.dart` (`Place.fromJson`). Struktur ini
sengaja dipisahkan dari UI agar pada tahap pengembangan berikutnya,
`loadPlaces()` cukup diganti isinya menjadi pemanggilan API tanpa mengubah
kode tampilan.

## Cara Menjalankan

1. Pastikan Flutter SDK sudah terpasang.
2. Clone/salin folder proyek ini, lalu masuk ke dalamnya:
   ```
   cd explore_malang
   ```
3. Pasang dependency:
   ```
   flutter pub get
   ```
4. Jalankan aplikasi (disarankan lewat Chrome):
   ```
   flutter run -d chrome
   ```

## Struktur Folder

```
explore_malang/
├─ assets/
│   └─ data/
│       └─ places.json
├─ lib/
│   ├─ data/
│   │   └─ place_repository.dart
│   ├─ model/
│   │   └─ place.dart
│   ├─ view/
│   │   ├─ home_page.dart
│   │   ├─ category_page.dart
│   │   └─ detail_page.dart
│   └─ main.dart
└─ pubspec.yaml
```
