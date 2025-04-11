# Deskripsi Soal

Diberikan sebuah string `s` yang hanya terdiri atas karakter `(`, `)`, `{`, `}`, `[` dan `]`. Tentukan apakah susunan tanda kurung dalam string tersebut valid.

Suatu string dikatakan valid apabila memenuhi seluruh kondisi berikut:

- Setiap tanda kurung buka harus memiliki pasangan tanda kurung tutup dengan jenis yang sama.
- Pasangan tanda kurung tersebut harus tertutup dalam urutan yang benar.
- Tidak boleh ada tanda kurung tutup yang tidak memiliki pasangan tanda kurung buka yang sesuai sebelumnya.

# Batasan

- `1 <= s.length <= 10⁴`
- `s` hanya terdiri atas karakter `(`, `)`, `{`, `}`, `[` dan `]`.


# Format Masukan
`string` `s` yang berisi kombinasi dari `(`, `)`, `{`, `}`, `[` dan `]`

# Format Keluaran
Cetak `true` jika kombinasi valid, `false` jika tidak.

# Kasus Uji

## Kasus 1  
**Input:** `()`  
**Output:** `true`

## Kasus 2  
**Input:** `()[]{}`  
**Output:** `true`

## Kasus 3  
**Input:** `(]`  
**Output:** `false`

## Kasus 4  
**Input:** `([])`  
**Output:** `true`
