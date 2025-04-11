# Deskripsi Soal

Diberikan sebuah array string `tokens` yang merepresentasikan suatu ekspresi aritmetika dalam bentuk **Reverse Polish Notation (RPN)**.

Tugas Anda adalah menghitung hasil dari ekspresi tersebut dan mengembalikannya sebagai bilangan bulat.

## Ketentuan

- Operator yang mungkin digunakan adalah `'+'`, `'-'`, `'*'`, dan `'/'`.
- Setiap operand dapat berupa bilangan bulat ataupun ekspresi lainnya.
- Operasi pembagian antara dua bilangan bulat harus **dibulatkan ke nol** (trunc).
- Tidak akan terdapat pembagian dengan nol.
- Input selalu merupakan ekspresi postfix yang valid.
- Seluruh hasil perhitungan dapat ditampung dalam bilangan bulat 32-bit.

# Batasan

- `1 <= tokens.length <= 10⁴`
- Setiap elemen `tokens[i]` adalah salah satu dari:
  - Operator: `'+'`, `'-'`, `'*'`, `'/'`
  - Bilangan bulat dalam rentang `[-200, 200]` (inklusif)

# Format Masukan
- Sebuah baris berisikan ekspresi matematis dengan RPN, operand dan operator dipisahkan oleh spasi

# Format Keluaran
- Hasil evalusi RPN

# Kasus Uji

## Kasus 1  
**Input:** `2 1 + 3 *`  
**Output:** `9`  
<details>
<summary>Penjelasan</summary>
(2 + 1) * 3 = 9
</details>

## Kasus 2  
**Input:** `4 13 5 / +`  
**Output:** `6`  
<details>
<summary>Penjelasan</summary>
4 + (13 / 5) = 4 + 2 = 6
</details>

## Kasus 3  
**Input:** `10 6 9 3 + -11 * / * 17 + 5 +`  
**Output:** `22`  
<details>
<summary>Penjelasan</summary>
Ekspresi:
((10 * (6 / ((9 + 3) * -11))) + 17) + 5  <br>
= ((10 * (6 / (12 * -11))) + 17) + 5  <br>
= ((10 * (6 / -132)) + 17) + 5  <br>
= ((10 * 0) + 17) + 5  <br>
= 17 + 5  <br>
= 22
</details>

# Catatan Tambahan: Apa Itu Reverse Polish Notation?

**Reverse Polish Notation (RPN)** atau *postfix notation* adalah format penulisan ekspresi matematika di mana operator dituliskan setelah operand-nya.

### Contoh

Ekspresi infix:  
`(3 + 4) * 5`

Ekspresi postfix (RPN):  
`3 4 + 5 *`

### Mengapa Menggunakan RPN?

- **Tidak membutuhkan tanda kurung**: Urutan evaluasi sudah ditentukan oleh posisi operator.
- **Sangat efisien untuk mesin**: Evaluasi mudah dilakukan menggunakan struktur data stack.
- **Bebas ambiguitas**: Setiap ekspresi hanya memiliki satu hasil evaluasi.
