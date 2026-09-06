# Kumpulan Perintah Pengujian API (cURL)

Berikut adalah kumpulan perintah `cURL` yang dapat Anda salin dan jalankan di terminal untuk menguji API Anda. 

**Catatan Penting:** 
* Pastikan server Node.js Anda sedang berjalan (`npm run dev`) di port 3000.
* Jika Anda sudah melakukan *deploy* ke Vercel, ubah `http://localhost:3000` menjadi URL publik Vercel Anda (misalnya `https://ppbmod1.vercel.app`).

---

## 1. Pengujian Kategori (`/api/categories`)

### Menambahkan Kategori Baru (POST)
```bash
curl -X POST http://localhost:3000/api/categories \
-H "Content-Type: application/json" \
-d '{"name": "Elektronik"}'
```

### Melihat Semua Kategori (GET)
*Gunakan hasil `id` dari perintah ini untuk perintah PUT (ubah) dan pembuatan Produk.*
```bash
curl -X GET http://localhost:3000/api/categories
```

### Mengubah Kategori (PUT)
*Ganti `MASUKKAN_ID_KATEGORI_DI_SINI` dengan ID yang didapat dari perintah GET.*
```bash
curl -X PUT http://localhost:3000/api/categories/MASUKKAN_ID_KATEGORI_DI_SINI \
-H "Content-Type: application/json" \
-d '{"name": "Elektronik & Gadget"}'
```

---

## 2. Pengujian Pelanggan (`/api/customers`)

### Menambahkan Pelanggan Baru (POST)
```bash
curl -X POST http://localhost:3000/api/customers \
-H "Content-Type: application/json" \
-d '{
  "name": "Budi Santoso",
  "email": "budi@email.com",
  "phone": "08123456789",
  "address": "Jl. Merdeka No. 10, Jakarta"
}'
```

### Melihat Semua Pelanggan (GET)
```bash
curl -X GET http://localhost:3000/api/customers
```

---

## 3. Pengujian Produk (`/api/products`)

### Menambahkan Produk Baru (POST)
*Ganti `MASUKKAN_ID_KATEGORI_DI_SINI` dengan ID yang valid dari tabel categories (dari perintah GET Kategori).*
```bash
curl -X POST http://localhost:3000/api/products \
-H "Content-Type: application/json" \
-d '{
  "sku": "PRD-002",
  "name": "Laptop ASUS VivoBook",
  "description": "Laptop tipis dan ringan untuk produktivitas",
  "category_id": "MASUKKAN_ID_KATEGORI_DI_SINI",
  "price": 8500000,
  "stock": 25
}'
```

### Melihat Semua Produk (GET)
```bash
curl -X GET http://localhost:3000/api/products
```
