# Deskripsi Soal
Diberikan sebuah string `s` yang bersisikan karakter `(`, `)`, `{`, `}`, `[`, dan `]`, tentukan apakah string tersebut valid atau tidak

String valid dikatakan jika:
- Setiap kurung buka harus ditutup oleh jenis kurung yang sama.
- Kurung harus ditutup dalam urutan yang benar.
- Setiap kurung tutup harus memiliki pasangan kurung buka yang sesuai.


# Batasan
- `1 <= s.size <= 1e4`
- `s` hanya mengandung simbol kurung `()[]{}`

# Kasus Uji

## Kasus 1
Input: `"()"` <br>
Output: `true`


## Kasus 2
Input: `"()[]{}"` <br>
Output: `true`


## Kasus 3
Input: `"(]"` <br>
Output: `false`

## Kasus 4
Input: `([])` <br>
Output: `true`