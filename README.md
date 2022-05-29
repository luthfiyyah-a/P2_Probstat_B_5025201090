# P2_Probstat_B_5025201090


PRAKTIKUM 2 PROBABILITAS DAN STATISTIKA

Nomor 1
	Standar deviasi dari data selisih = 6.359395
  ![image](https://user-images.githubusercontent.com/79054230/170882018-221bc780-ed8a-4292-87ba-b8f08dd563de.png)

	Nilai t
  ![image](https://user-images.githubusercontent.com/79054230/170882025-56b2c286-b1f6-4198-b665-9f61c5d66c0d.png)

 

	tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

dari  perhitungan yang dilakukan, didapat p-value < 0.05 (α). Didapat pula meannya tidak sama dengan 0. Dari sini, kita dapat menolak H0 yang menyatakan bahwa : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”. Dan kita dapat menyimpulkan bahwa terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴.

Nomor 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).
 
 ![image](https://user-images.githubusercontent.com/79054230/170882037-0484b29f-3dbf-4665-928f-f92d0053e2cd.png)

	Apakah Anda setuju dengan klaim tersebut? 
Ya. karena
H0 Rata-rata >= 20000
Lalu, sampel diperoleh rata2 23500 (ini >=20000).
Dengan standar deviasi 3900, maka juga 23500 masih lebih kecil  24141.49

Maka, secara statistik saya setuju dengan klaim tersebut

	Jelaskan maksud dari output yang dihasilkan! 
- didapat nilai z = 8.9744, dan p-value = 1
- H1 (hipotesis alternatif)nya ialah mean lebih kecil dari 20000, yakni nilai rata-rata klaim. (menentang H0).
- kita dapat yakin 95% bahwa nilai estimasi rata-ratanya ialah di bawah 24141.49

	Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
Karena p-value = 1, maka tidak mungkin terjadi H1 (mean lebih keci dari 20000). Dapat disimpulkan bahwa rata-rata lebih dari 20000, sesuai dengan klaim (hipotesis) awal

Nomor 3

	H0 dan H1
H0: μ_1=μ_2 nilai rata-rata bandung dan bali sama (tidak ada perbedaan).  
H1: μ_1  !=μ_2  nilai rata-rata bandung dan bali tidak sama


t=((X ̅_1-X ̅_2 )-(μ_1-μ_2))/√(〖 S〗_p^2 (1/n_1 +1/n_2 )  )


![image](https://user-images.githubusercontent.com/79054230/170882049-15e05b30-f948-436a-bc22-f827ca9e8a2a.png)

	Hitung Sampel statistik
-0.03911 <= μ_1-μ_2 <= 1.739

	Lakukan Uji Statistik
T = 1.9267

	Nilai Kritikal
Nilai kritikal dengan df = 2, α= 0.05 adalah -2.919986 hingga 2.919986
Nilai kritikal dengan df = 44, α= 0.05 adalah -1.6807 hingga 1.6807

	Keputusan
Tolak H0 pada α=0.05

	Kesimpulan
Terdapat bukti bahwa ditemukan perbedaan pada nilai mean
 
Nomor 4
	a. Gambar plot
  ![image](https://user-images.githubusercontent.com/79054230/170882058-e934b047-2ca3-4988-a9f5-56e57d7fd344.png)
Tidak ada outlier

C. uji anova
![image](https://user-images.githubusercontent.com/79054230/170882071-1d6672e1-a17d-4a8f-ab30-c49da116b9bc.png)

 


d. Nilai-p
P-value = 0.64
p-value lebih besar dari pada titik kritis. Maka, kemungkinan mengarah ke ‘kebetulan’, dan tidak cukup kuat untuk membuktikan bahwa ada perbedaan panjang antara ketiga spesies tersebut. Maka, saya setuju dengan H0
	Tukey
e. uji tukey
![image](https://user-images.githubusercontent.com/79054230/170882086-62e39d87-d6f9-4f49-b60a-c71e68e80e18.png)


error :’)


Nomor 5
	a. Plot sederhana untk visualisasi data
  Visualisasi menggunakan ggplot
  ![image](https://user-images.githubusercontent.com/79054230/170882095-044cd0c0-dac3-4fcb-a984-1e9a1257b1aa.png)

 
*hasil ada di kanan bawah

Visualisasi menggunakan ggboxplot
![image](https://user-images.githubusercontent.com/79054230/170882105-79eb0cf7-d4cc-4c39-8161-bf1d941f6cb7.png)

 

	uji anova
  ![image](https://user-images.githubusercontent.com/79054230/170882136-24e26f2d-d1ba-4e03-9277-e1dc931a3daf.png)

 

	menampilkan tabel mean dan standar deviasi dari seluruh kombinasi (belum selesai)
  ![image](https://user-images.githubusercontent.com/79054230/170882146-1424af2e-0e69-4bbf-bbaa-d6136869351b.png)


d.	Uji tukey
![image](https://user-images.githubusercontent.com/79054230/170882158-fbf601ba-3329-4123-9123-5b0e34e21d43.png)
![image](https://user-images.githubusercontent.com/79054230/170882164-c343372f-a8d6-4087-acc9-5d46e5387327.png)

 
 
