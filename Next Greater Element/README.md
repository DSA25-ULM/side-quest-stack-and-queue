# Deskripsi Soal
Diberikan sebuah array bilangan bulat `nums` dengan panjang `n`, untuk setiap elemen dalam array, carilah elemen pertama di sebelah kanannya yang bernilai lebih besar dari elemen tersebut. Jika tidak ada elemen seperti itu, kembalikan `-1` untuk posisi tersebut.
<br>
Simpan hasilnya dalam bentuk array baru dengan panjang yang sama.


# Batasan
- `1 ≤ n ≤ 1e4`
- `-10⁹ ≤ nums[i] ≤ 1e9`

# Kasus Uji

## Kasus 1
Input: `[2, 1, 2, 4, 3]` <br>
Output: `[4, 2, 4, -1, -1]`


## Kasus 2
Input: `[1, 3, 2, 4]` <br>
Output: `[3, 4, 4, -1]`


## Kasus 3
Input: `[5]` <br>
Output: `[-1]`