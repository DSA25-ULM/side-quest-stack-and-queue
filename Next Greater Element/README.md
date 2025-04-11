# Deskripsi Soal
Diberikan sebuah array bilangan bulat `nums` dengan panjang `n`, untuk setiap elemen dalam array, carilah elemen pertama di sebelah kanannya yang bernilai lebih besar dari elemen tersebut. Jika tidak ada elemen seperti itu, kembalikan `-1` untuk posisi tersebut.
<br>
Simpan hasilnya dalam bentuk array baru dengan panjang yang sama.


# Batasan
- `1 ≤ n ≤ 1e4`
- `-10e9 ≤ nums[i] ≤ 1e9`

# Format Masukan
- Baris pertama berupa `n` yang menunjukkan jumlah elemen pada array
- sebuah array berisi `int` dengan tiap elemen dipisahkan oleh spasi

# Fomat Keluaran
- Sebuah baris berisikan elemen hasil operasi, dipisahkan oleh spasi

# Kasus Uji

## Kasus 1
Input: <br> 
``` 
5
2 1 2 4 3
```
 <br>

Output: <br>
```
4 2 4 -1 -1
```


## Kasus 2
Input: 

```
4
1 3 2 4
``` 
<br>

Output: 
```
3 4 4 -1
```


## Kasus 3
Input: 
```
1
5
``` 
<br>

Output: 
```
-1
```