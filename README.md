# Two-Stage-Cluster-Sampling
## Studi Kasus: Kebiasaan Belajar Mahasiswa

---

# BAB I PENDAHULUAN

## 1.1 Latar Belakang

Kebiasaan belajar merupakan determinan internal yang krusial bagi capaian akumulatif performa akademik mahasiswa. Fenomena di lapangan menunjukkan adanya diversitas pola belajar yang dipengaruhi oleh manajemen waktu, strategi kognitif, tingkat disiplin, serta pemanfaatan teknologi informasi. Untuk memetakan kondisi ini secara objektif, diperlukan riset berbasis survei yang akurat.

Secara struktural, populasi mahasiswa di perguruan tinggi terorganisasi di dalam kompartemen kelas (cluster). Pengambilan sampel acak sederhana secara langsung (Simple Random Sampling) pada seluruh populasi sering kali tidak efisien secara logistik dan operasional. Oleh karena itu, metode Two-Stage Cluster Sampling diterapkan sebagai solusi metodologis. Metode ini mampu mengakomodasi struktur populasi alami yang berkelompok sekaligus menekan biaya dan waktu survei tanpa mengorbankan kaidah keterwakilan ilmiah (representativeness).

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

## 2.1 Populasi dan Sampel

- Jumlah kelas : **6 kelas**
- Populasi Utama ($N$): **Terdiri dari 6 kelas mahasiswa**
- Sampel Tahap I ($n$): **Dipilih 2 kelas secara acak dari total 6 kelas**
- Populasi Mahasiswa di Cluster Terpilih: **Total $52$ mahasiswa yang berada di dalam 2 kelas yang terpilih tersebut**
- Sampel Tahap II ($m$): **Dipilih/diambil $33$ mahasiswa yang merespons penuh instrumen penelitian dari total $52$ mahasiswa pada cluster terpilih**

## 2.2 Kerangka Teoretis Dua Tahap (Two-Stage Cluster Sampling)
Untuk memahami asal-usul angka bobot dan peluang pada output analisis, berikut adalah struktur matematis peluang inklusi bertahap yang digunakan:

## 1. Tahap I

Setiap kelas memiliki peluang yang sama untuk terpilih sebesar $P_1$. Dengan jumlah total kelas dalam populasi $N = 6$ dan kelas sampel yang diambil $n = 2$, maka rumusnya:

$$P_1 = \frac{n}{N} = \frac{2}{6} = 0,3333333$$

---

## 2. Tahap II

Peluang mahasiswa terpilih di dalam kelas yang sudah memenangkan tahap pertama disebut $P_2$. Dari total $52$ mahasiswa di kelas terpilih, sebanyak $33$ mahasiswa berpartisipasi mengisi kuesioner. Maka rumusnya:

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

## 3. Probabilitas Akhir

Peluang total seorang mahasiswa terpilih dari keseluruhan populasi dari tahap pertama hingga tahap kedua adalah perkalian komposit dari $P_1$ dan $P_2$:

$$P = P_1 \times P_2 = \frac{2}{6} \times \frac{33}{52} = \frac{66}{312} = 0,2115385$$

---

## 4. Bobot Sampling
Bobot sampling ($w$) adalah kebalikan matematis dari probabilitas elemen akhir ($1/P$). Nilai ini merepresentasikan nilai keterwakilan sampel terhadap populasi asal.

$$w = \frac{1}{P} = \frac{1}{0,2115385} = 4,727273$$

Artinya satu responden mewakili sekitar **4,73 mahasiswa** pada populasi.

---

# BAB III HASIL DAN PEMBAHASAN

## 3.1 Uji Validitas
Uji validitas menggunakan korelasi Pearson Product-Moment dengan teknik Corrected Item-Total Correlation, yaitu mengorelasikan skor tiap item ke-$i$ dengan skor total kuesioner setelah dikurangi item ke-$i$ tersebut ($Y - X_i$) agar tidak terjadi overestimation (kelebihan taksiran) validitas.

Rumus dasar korelasi item-total:

$$r_{\text{hitung}} = \frac{\text{Cov}(X_i, Y - X_i)}{\sigma_{X_i} \cdot \sigma_{(Y - X_i)}}$$

Dengan jumlah sampel responden $n = 33$, nilai derajat kebebasan ($df = n - 2 = 31$) pada tingkat signifikansi $\alpha = 5\%$, diperoleh nilai konstanta $r_{\text{tabel}} = 0,355$. Item pernyataan dinyatakan Valid apabila syarat $r_{\text{hitung}} > 0,355$ terpenuhi. 

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
  
> Sebanyak 14 Item dinyatakan VALID dan dipertahankan untuk analisis utama, sedangkan 6 item gugur (P3, P6, P14, P16, P18, P20) dieksklusi secara permanen dari pemrosesan berikutnya.

---

# 3.2 Uji Reliabilitas
Uji reliabilitas diaplikasikan eksklusif hanya terhadap 14 item yang berstatus valid dengan estimasi koefisien kohesi internal Cronbach's Alpha ($\alpha$). 

Rumus dasarnya:

$$\alpha = \frac{k}{k-1} \left(1 - \frac{\sum \sigma_i^2}{\sigma_t^2}\right)$$

Dimana $k = 14$ (kuantitas item valid), $\sum \sigma_i^2$ merupakan akumulasi nilai varians skor dari masing-masing item valid, dan $\sigma_t^2$ menyatakan nilai varians dari skor total gabungan 14 item tersebut.

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

# 3.3 Statistik Deskriptif / Total Scoring

Skor total dihitung dengan menjumlahkan bobot nilai empiris jawaban responden ($1$ sampai $4$) khusus untuk $14$ item yang valid.

$$\text{Skor Total}_j = \sum_{i \in \text{valid}} P_{ij}

$$Dimana $j$ merupakan indeks pengenal responden dari sampel ke-1 hingga sampel ke-33. Output deskriptif sebaran nilai total skor dari R adalah sebagai berikut:

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
Untuk memudahkan standardisasi interpretasi nilai menjadi indikator persentase kedekatan performa sampel terhadap performa ideal (rentang skala 0–100%), nilai skor total diubah menjadi bentuk variabel Indeks.

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
Dalam Two-Stage Cluster Sampling, estimasi parameter rata-rata populasi dihitung menggunakan pendekatan rata-rata terbobot (weighted mean). Rumus umumnya adalah:

$$\bar{x}_w = \frac{\sum (w_j \times \text{Indeks}_j)}{\sum w_j}$$

Oleh karena nilai bobot penimbang ($w_j$) pada setiap unit sampel bernilai konstan seragam akibat penarikan sampel yang proporsional ($w_j = 4,727273$), maka konstanta bobot dapat dieliminasi secara aljabar sehingga menyederhanakan rumusnya kembali ke rata-rata aritmetika biasa:

$$\bar{x}_w = \frac{4,727273 \sum \text{Indeks}_j}{33 \times 4,727273} = \frac{\sum \text{Indeks}_j}{33} = 70,18398\%$$

---

# 3.6 Standard Error

Standard Error ($SE$) mengukur besarnya fluktuasi, deviasi, atau tingkat kerentanan galat nilai estimasi rata-rata sampel jika dilakukan sampling berulang kali.

$$SE = \frac{SD}{\sqrt{m}} = \frac{14,42099}{\sqrt{33}} = \frac{14,42099}{5,744563} = 2,510372\%$$

---

# 3.7 Interval Kepercayaan 95% (confidence Interval)

Interval kepercayaan berfungsi mengurung nilai parameter rata-rata kebiasaan belajar populasi yang riil menggunakan batas toleransi nilai kritis distribusi Z pada tingkat kepercayaan $95\%$ ($Z_{\alpha/2} = 1,96$).

$$\text{Batas Bawah} = \bar{x}_w - (1,96 \times SE) = 70,18398 - (1,96 \times 2,510372) = 65,26365\%$$

$$\text{Batas Atas} = \bar{x}_w + (1,96 \times SE) = 70,18398 + (1,96 \times 2,510372) = 75,10431\%$$

Interpretasi:

> Dengan tingkat kepercayaan 95%, rata-rata indeks kebiasaan belajar mahasiswa berada pada rentang **65.26% hingga 75.10%**.

---

# 3.8 Perbandingan Metode
Berikut merupakan visualisasi komparatif efisiensi parameter estimasi antara metode acak sederhana (SRS) dengan klaster dua tahap (Two-Stage Cluster) berdasarkan kalkulasi R:

|Parameter|SRS|Cluster|
|---------|------:|------:|
|Mean|70.18|70.18|
|SE|2.51|2.51|

> Nilai estimasi rata-rata dan kesalahan baku ($SE$) kedua metode bernilai identik dikarenakan rancangan sampling ini menghasilkan pembobotan unit yang seragam (self-weighting design). Kondisi ini terjadi karena proporsi sebaran ukuran klaster sampel terhadap populasinya seimbang.
---

# 3.9 Design Effect

Design Effect ($Deff$) mengevaluasi efisiensi varians dari desain sampling kelompok (cluster) terhadap pembanding kontrol berupa sampling acak sederhana (SRS) dengan ukuran sampel setara.

$$Deff = \frac{SE_{\text{cluster}}^2}{SE_{\text{SRS}}^2} = \frac{(2,510372)^2}{(2,510372)^2} = 1$$

Interpretasi:

> Nilai $Deff = 1$ bermakna bahwa variasi data kebiasaan belajar antar-kelas (antar-cluster) bersifat homogen atau seragam. Struktur variasi ini membuat penerapan teknik cluster bertahap memiliki tingkat ketelitian estimasi yang setara dengan SRS, namun unggul mutlak dari sisi kemudahan administrasi operasional pengumpulan data di lapangan. 

---

# 3.10 Relative Standard Error

$RSE$ digunakan sebagai metrik penilaian derajat akurasi hasil penaksiran sampel dalam satuan persentase.

$$RSE = \left( \frac{SE_{\text{cluster}}}{\text{Estimasi}_{\text{cluster}}} \right) \times 100 = \left( \frac{2,510372}{70,18398} \right) \times 100 = 3,576845\%$$

interpretasi:

> Nilai estimasi dikategorikan memiliki presisi sangat tinggi dan andal jika nilai indikator $RSE < 25\%$. Berhubung nilai $RSE$ riset ini hanya menyentuh angka $3,58\%$, maka kesimpulan hasil survei ini dinyatakan sangat valid, akurat, dan aman digunakan untuk memetakan kondisi populasi.

---

# 3.11 Analisis Indikator

Untuk membedah rincian dimensi internal kebiasaan belajar mahasiswa, dilakukan penghitungan rata-rata pada setiap indikator soal terkait (skala 0-100%). Perhitungannya menggunakan fungsi rerata baris komponen item pembentuk indikator, dibagi batas respons tertinggi (4), lalu diindekskan ke pengali 100%.

$$\text{Indeks Indikator} = \frac{\text{Rata-rata Skor Item Indikator}}{4} \times 100$$

Berikut adalah urutan capaian indikator dari performa terbaik hingga yang paling lemah berdasarkan output data dataframe indikator pada R:

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

interpretasi Komponen Indikator:
> - Dimensi Pemanfaatan Teknologi ($78,79\%$) menempati posisi puncak performa. Data ini menafsirkan secara empiris bahwa mahasiswa sangat mahir mendayagunakan platform digital, gawai, dan sistem manajemen pembelajaran untuk mempercepat pencarian sumber studi.
> - Sebaliknya, dimensi Motivasi Belajar ($64,39\%$) jatuh sebagai nilai terendah. Kondisi ini mencerminkan adanya hambatan pada aspek stimulus internal mahasiswa; mereka cenderung kurang terdorong untuk belajar secara mandiri apabila tidak ada tekanan penugasan wajib atau ujian dari pihak dosen pengampu.

---

# BAB IV PENUTUP

## Kesimpulan

Berdasarkan hasil analisis terhadap delapan indikator kebiasaan belajar mahasiswa, diperoleh bahwa pemanfaatan teknologi merupakan indikator dengan capaian tertinggi, yaitu sebesar 78,79%, yang menunjukkan bahwa mahasiswa telah mampu memanfaatkan berbagai media dan teknologi digital secara optimal dalam mendukung proses pembelajaran. Selain itu, indikator fokus belajar, evaluasi belajar, dan perencanaan belajar juga memperoleh nilai yang tergolong baik, yaitu masing-masing sebesar 72,35%, 71,21%, dan 70,45%, sehingga dapat disimpulkan bahwa sebagian besar mahasiswa telah memiliki kemampuan yang cukup baik dalam menjaga konsentrasi, melakukan evaluasi terhadap hasil belajar, serta menyusun rencana belajar secara terarah.

Sementara itu, indikator disiplin belajar, strategi belajar, dan interaksi belajar masing-masing memperoleh nilai 68,94%, yang menunjukkan bahwa ketiga aspek tersebut berada pada kategori cukup baik. Hasil ini mengindikasikan bahwa mahasiswa telah memiliki kebiasaan belajar yang relatif positif, namun masih memerlukan peningkatan terutama dalam menjaga konsistensi belajar, menerapkan strategi belajar yang lebih efektif, serta meningkatkan interaksi selama proses pembelajaran.

Di sisi lain, motivasi belajar memperoleh nilai paling rendah, yaitu sebesar 64,39%. Hasil tersebut menunjukkan bahwa motivasi internal mahasiswa masih menjadi aspek yang perlu mendapatkan perhatian lebih. Rendahnya motivasi belajar dapat memengaruhi konsistensi mahasiswa dalam mengikuti proses pembelajaran dan berpotensi berdampak pada pencapaian akademik apabila tidak dilakukan upaya peningkatan melalui dukungan dari lingkungan akademik maupun pengembangan motivasi diri.

Secara keseluruhan, hasil analisis indikator menunjukkan bahwa kebiasaan belajar mahasiswa telah berada pada kategori baik, dengan kekuatan utama terletak pada pemanfaatan teknologi sebagai pendukung proses belajar. Meskipun demikian, aspek motivasi, disiplin, strategi belajar, dan interaksi belajar masih perlu ditingkatkan agar seluruh komponen kebiasaan belajar berkembang secara lebih seimbang dan mampu mendukung peningkatan prestasi akademik mahasiswa secara optimal.

---

## Rekomendasi

Secara umum, program studi disarankan untuk mempertahankan aspek pemanfaatan teknologi yang telah menunjukkan capaian tertinggi, serta memberikan perhatian lebih pada peningkatan motivasi belajar, disiplin belajar, strategi belajar, dan interaksi belajar mahasiswa. Upaya tersebut dapat dilakukan melalui program mentoring akademik, pelatihan strategi belajar efektif, penguatan manajemen waktu, serta peningkatan aktivitas diskusi dan kolaborasi dalam proses pembelajaran. Dengan pengembangan yang lebih seimbang pada seluruh indikator, diharapkan kualitas kebiasaan belajar mahasiswa dapat meningkat dan berdampak positif terhadap pencapaian akademik.

---


