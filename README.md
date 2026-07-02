# Two-Stage-Cluster-Sampling
## Studi Kasus: Kebiasaan Belajar Mahasiswa

---

# BAB I PENDAHULUAN

## 1.1 Latar Belakang

Kebiasaan belajar merupakan determinan internal yang krusial bagi capaian performa akademik mahasiswa. Fenomena di lapangan menunjukkan adanya variasi pola belajar yang dipengaruhi oleh manajemen waktu, strategi belajar, disiplin, serta pemanfaatan teknologi informasi.

Karena populasi mahasiswa tersusun dalam kelompok kelas (*cluster*), maka penelitian ini menggunakan metode **Two-Stage Cluster Sampling** agar proses pengambilan sampel menjadi lebih efisien tanpa mengurangi representativitas hasil penelitian.

---

## 1.2 Tujuan Penelitian

- Menguji validitas instrumen penelitian.
- Menguji reliabilitas instrumen penelitian.
- Mengestimasi rata-rata indeks kebiasaan belajar mahasiswa.
- Menghitung Standard Error (SE).
- Menghitung Confidence Interval (CI).
- Menghitung Design Effect (Deff).
- Menghitung Relative Standard Error (RSE).
- Menganalisis indeks setiap indikator kebiasaan belajar.

---

# BAB II METODOLOGI PENELITIAN

## Populasi

- Jumlah kelas : **6 kelas**

## Tahap I

Dipilih sebanyak **2 kelas** secara acak.

$$
P_1=\frac{2}{6}=0.333333
$$

---

## Tahap II

Jumlah mahasiswa pada kedua kelas

$$
52 \text{ mahasiswa}
$$

Mahasiswa yang mengisi kuesioner

$$
33 \text{ mahasiswa}
$$

Peluang tahap kedua

$$
P_2=\frac{33}{52}=0.634615
$$

---

## Probabilitas Akhir

$$
P=P_1\times P_2
$$

$$
=\frac26\times\frac{33}{52}
$$

$$
=0.2115385
$$

---

## Bobot Sampling

$$
w=\frac1P
$$

$$
w=4.727273
$$

Artinya satu responden mewakili sekitar **4,73 mahasiswa** pada populasi.

---

# BAB III HASIL DAN PEMBAHASAN

## 3.1 Uji Validitas

Nilai

$$
r_{tabel}=0.355
$$

### Hasil

|Item|r hitung|Status|
|----|--------|------|
|P1|0.3959|✅ Valid|
|P2|0.4005|✅ Valid|
|P3|0.2842|❌ Tidak Valid|
|P4|0.5470|✅ Valid|
|P5|0.8291|✅ Valid|
|P6|0.0493|❌ Tidak Valid|
|P7|0.8168|✅ Valid|
|P8|0.4090|✅ Valid|
|P9|0.5380|✅ Valid|
|P10|0.8184|✅ Valid|
|P11|0.7112|✅ Valid|
|P12|0.5558|✅ Valid|
|P13|0.4651|✅ Valid|
|P14|0.2810|❌ Tidak Valid|
|P15|0.7422|✅ Valid|
|P16|0.1766|❌ Tidak Valid|
|P17|0.4968|✅ Valid|
|P18|0.2138|❌ Tidak Valid|
|P19|0.8395|✅ Valid|
|P20|0.3515|❌ Tidak Valid|

### Kesimpulan

- Item valid : **14**
- Item gugur : **6**

---

# 3.2 Uji Reliabilitas

Cronbach Alpha

$$
\alpha=0.916
$$

Karena

$$
\alpha>0.70
$$

maka instrumen memiliki reliabilitas **sangat tinggi**.

---

# 3.3 Statistik Deskriptif

|Statistik|Nilai|
|---------|------:|
|Minimum|20|
|Q1|37|
|Median|40|
|Mean|39.303|
|Q3|42|
|Maximum|54|
|SD|8.075|

---

# 3.4 Indeks Kebiasaan Belajar

Skor maksimum

$$
56
$$

Rumus

$$
Indeks=\frac{Skor}{56}\times100
$$


```math
\frac{54}{56}\times100=96.43
```
---

## Hasil

|Parameter|Nilai|
|---------|------:|
|Mean|70.18%|
|SD|14.42%|

---

# 3.5 Estimasi Mean

$$
\bar{x}_w=
\frac{\sum w_i x_i}
{\sum w_i}
$$

Karena bobot sama,

$$
\bar{x}=70.18398
$$

---

# 3.6 Standard Error

$$
SE=\frac{SD}{\sqrt{33}}
$$

$$
SE=2.510372
$$

---

# 3.7 Confidence Interval

95%

Lower

$$
65.26365
$$

Upper

$$
75.10431
$$

Interpretasi:

> Dengan tingkat kepercayaan 95%, rata-rata indeks kebiasaan belajar mahasiswa berada pada rentang **65.26% hingga 75.10%**.

---

# 3.8 Perbandingan Metode

|Parameter|SRS|Cluster|
|---------|------:|------:|
|Mean|70.18|70.18|
|SE|2.51|2.51|

---

# 3.9 Design Effect

$$
Deff=1
$$

Interpretasi:

Desain Cluster memiliki efisiensi yang sama dengan Simple Random Sampling.

---

# 3.10 Relative Standard Error

$$
RSE=
\frac{SE}{Mean}\times100
$$

$$
RSE=3.576845\%
$$

Karena

$$
RSE<25\%
$$

maka estimasi memiliki presisi yang sangat baik.

---

# 3.11 Analisis Indikator

|Indikator|Nilai|
|---------|------:|
|Pemanfaatan Teknologi|78.79%|
|Fokus Belajar|72.35%|
|Evaluasi Belajar|71.21%|
|Perencanaan Belajar|70.45%|
|Disiplin Belajar|68.94%|
|Strategi Belajar|68.94%|
|Interaksi Belajar|68.94%|
|Motivasi Belajar|64.39%|

---

# BAB IV PENUTUP

## Kesimpulan

- Terdapat **14 item valid**.
- Cronbach Alpha sebesar **0.916** menunjukkan reliabilitas sangat tinggi.
- Estimasi rata-rata indeks sebesar **70.18%**.
- Confidence Interval berada pada **65.26%–75.10%**.
- Design Effect sebesar **1**.
- Relative Standard Error sebesar **3.58%**, menunjukkan hasil estimasi sangat presisi.

---

## Rekomendasi

- Meningkatkan motivasi belajar mahasiswa.
- Mempertahankan penggunaan teknologi dalam pembelajaran.
- Penelitian berikutnya dapat menggunakan jumlah cluster yang lebih banyak untuk populasi yang lebih heterogen.

---

# Struktur Repository

```
Two-Stage-Cluster-Sampling/
│
├── README.md
├── data/
│   ├── data_kuesioner.xlsx
│   └── data_valid.csv
│
├── script/
│   └── analisis.R
│
├── output/
│   ├── hasil_validitas.xlsx
│   ├── hasil_reliabilitas.xlsx
│   ├── grafik.png
│   └── tabel_indikator.csv
│
└── laporan/
    └── Laporan.pdf
```

````

Format ini sudah sesuai dengan gaya dokumentasi di GitHub, menggunakan heading Markdown, tabel, daftar, dan persamaan LaTeX (`$$...$$`) yang akan dirender oleh GitHub pada bagian matematika yang didukung atau tetap terbaca sebagai Markdown.
