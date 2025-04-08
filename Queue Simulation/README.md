# Deskripsi Soal
Pak Dengklek meminta Anda untuk menyimulasikan `Q` operasi terhadap sebuah antrian (queue) yang terdiri dari bilangan bulat.

Antrian dimulai dalam keadaan kosong. Lalu, Anda akan diberikan serangkaian perintah, yang dapat berupa:
<br>
- `add x y` tambahkan `y` buah blangan `x` ke belakang antrian, lalu cetak banyak elemen dalam antrian saat ini
- `del y` keluarkan sebanyak `y` elemen dari __depan antrian__, lalu cetak bilangan pertama yang dikeluarkan.
- `rev` balikkan urutan antrian (depan menjadi belakang dan sebaliknya). Tidak mencetak apapun.

# Batasan
- `1 ≤ Q ≤ 1000`
- `1 ≤ X, Y ≤ 10 000`

# Format Masukan

- Baris pertama berisi sebuah bilangan bulat `Q`, menyatakan banyaknya perintah.

- `Q` baris berikutnya masing-masing berisi satu perintah: `add`, `del`, atau `rev`.

# Format Keluaran

- Cetak sejumlah baris sesuai dengan banyaknya perintah `add` dan `del` yang diberikan.

- Untuk setiap `add`, cetak jumlah elemen antrian setelah operasi.

-Untuk setiap `del`, cetak elemen pertama yang dikeluarkan dari antrean.

# Kasus Uji

Input: <br>
```
6
add 1 1
add 2 2
add 3 3
del 2
rev
del 2
```
<br>

Output: <br>
```
1
3
6
1
3
```
<br>

Penjelasan: <br>
```
awal    : []
add 1 1 : [1]           → cetak 1
add 2 2 : [1 2 2]       → cetak 3
add 3 3 : [1 2 2 3 3 3] → cetak 6
del 2   : [2 3 3 3]     → cetak 1
rev     : [3 3 3 2]
del 2   : [3 2]         → cetak 3
```