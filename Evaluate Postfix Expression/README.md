# Deskripsi Soal
Diberikan sebuah array string `tokens` yang merepresentasikan ekspresi matematika dalam bentuk __Reverse Polish Notation__.

Hitung hasil ekspresi tersebut dalam bentuk bilangan bulat (integer)

## Catatan
- Operator yang valid adalah `'+'`, `'-'`, `'*'`, dan `'/'`.
- Setiap operand bisa berupa bilangan bulat ataupun ekspresi lainnya.
- Pembagian antara dua bilangan bulat **selalu dibulatkan ke nol** (trunc).
- Tidak akan ada kasus pembagian dengan nol.
- Input selalu merepresentasikan ekspresi aritmetika yang **valid dalam notasi postfix**.
- Hasil akhir maupun semua perhitungan antara dapat disimpan dalam **integer 32-bit**.

# Batasan
- `1 <= tokens.size <= 1e4`
- `tokens[i]` berupa operator matematika: `+`, `-`, `*`, dan `/`, atau bilangan bulat dalam rentang `[-200, 200]` (inklusif).

# Kasus Uji

## Kasus 1
Input: `["2","1","+","3","*"]` <br>
Output: `9`
<details>
  <summary>Penjelasan</summary>
  ((2 + 1) * 3) = 9
</details>

## Kasus 2
Input: `["4","13","5","/","+"]` <br>
Output: `6`
<details>
  <summary>Penjelasan</summary>
  (4 + (13 / 5)) = 6
</details>

## Kasus 3
Input: `["10","6","9","3","+","-11","*","/","*","17","+","5","+"]` <br>
Output: `22`
<details>
  <summary>Penjelasan</summary>
  ((10 * (6 / ((9 + 3) * -11))) + 17) + 5 <br>
  = ((10 * (6 / (12 * -11))) + 17) + 5 <br>
  = ((10 * (6 / -132)) + 17) + 5 <br>
  = ((10 * 0) + 17) + 5 <br>
  = (0 + 17) + 5 <br>
  = 17 + 5 <br>
  = 22
</details>


# Trivial
Reverse Polish Notation (RPN) adalah cara penulisan ekspresi matematika di mana operator dituliskan setelah operand. <br>
Metode ini pertama kali diperkenalkan oleh Jan Łukasiewicz, seorang filsuf dan logikawan dari Polandia, pada tahun 1920-an. Sistem ini dinamai "Polish Notation" karena asal usul penciptanya.

infix: `(3 + 4) * 5` <br>
postfix (RPN): `3 4 + 5 *`

## Keunggulan RPN
- Tanpa tanda kurung: Karena urutan eksekusi sudah jelas dari posisi operator, kita tidak perlu menggunakan tanda kurung.

- Efisien untuk komputer: Cocok untuk evaluasi menggunakan stack, yang sangat natural untuk dijalankan oleh mesin.

- Tidak ambigu: Setiap ekspresi RPN hanya memiliki satu cara evaluasi.