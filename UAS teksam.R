
library(readxl)
library(psych)

# baca data
data <- read_excel("C:/Users/USER/Downloads/project UAS teksam.xlsx")

View(data)


# ===============================
# 3. UJI VALIDITAS
# ===============================

# total skor awal 20 item
total_awal <- rowSums(data)

# tabel hasil validitas
validitas <- data.frame(
  Item = names(data),
  r_hitung = NA
)

# korelasi item-total
for(i in 1:ncol(data)){
  
  validitas$r_hitung[i] <- cor(
    data[,i],
    total_awal - data[,i]
  )
  
}

# hasil validitas
validitas

# status valid
validitas$Status <- ifelse(
  validitas$r_hitung > 0.355,
  "Valid",
  "Tidak Valid"
)

validitas

# ===============================
# 4. AMBIL ITEM VALID
# ===============================
data_valid <- data[,c(
  "P1",
  "P2",
  "P4",
  "P5",
  "P7",
  "P8",
  "P9",
  "P10",
  "P11",
  "P12",
  "P13",
  "P15",
  "P17",
  "P19"
)]

View(data_valid)

# ===============================
# 5. UJI RELIABILITAS
# ===============================
reliabilitas <- alpha(data_valid)

reliabilitas

# ===============================
# 6. TOTAL SCORING
# ===============================
data$skor_total <- rowSums(data_valid)

data$skor_total

# ===============================
# 7. STATISTIKA DESKRIPTIF
# ===============================
summary(data$skor_total)

mean(data$skor_total)
sd(data$skor_total)
min(data$skor_total)
max(data$skor_total)

# ===============================
# 8. MEMBUAT INDEKS
# ===============================
# jumlah item valid x skor maksimum
skor_maks <- ncol(data_valid)*4

skor_maks

# indeks tiap responden
data$indeks <- 
  (data$skor_total/skor_maks)*100

data$indeks

# deskriptif indeks
mean(data$indeks)
sd(data$indeks)

# ===============================
# 9. BOBOT TWO STAGE CLUSTER
# ===============================
# tahap 1
# dari 6 kelas ambil 2
P1 <- 2/6

# tahap 2
# mahasiswa terpilih 33 dari 52
P2 <- 33/52

# peluang akhir
P <- P1*P2

P

# bobot
bobot <- 1/P

bobot

data$bobot <- bobot

# ===============================
# 10. ESTIMASI RATA-RATA INDEKS
# ===============================
estimasi <- weighted.mean(
  data$indeks,
  data$bobot
)
estimasi

# ===============================
# 11. STANDARD ERROR
# ===============================
SE <- sd(data$indeks)/
  sqrt(nrow(data))

SE

# ===============================
# 12. INTERVAL KEPERCAYAAN 95%
# ===============================
CI_bawah <- 
  estimasi-(1.96*SE)

CI_atas <-
  estimasi+(1.96*SE)

c(
  CI_bawah,
  CI_atas
)

# ===============================
# 13. PERBANDINGAN SRS VS CLUSTER
# ===============================
# SRS
estimasi_SRS <- mean(data$indeks)

SE_SRS <-
  sd(data$indeks)/
  sqrt(nrow(data))

# Cluster
estimasi_cluster <- weighted.mean(
  data$indeks,
  data$bobot
)

SE_cluster <-
  sd(data$indeks)/
  sqrt(nrow(data))

# tabel hasil
hasil <- data.frame(
  
  Metode=c(
    "SRS",
    "Cluster"
  ),
  
  Estimasi=c(
    estimasi_SRS,
    estimasi_cluster
  ),
  
  SE=c(
    SE_SRS,
    SE_cluster
  )
  
)

hasil

# ===============================
# 14. DESIGN EFFECT
# ===============================
Deff <-
  (SE_cluster^2)/
  (SE_SRS^2)

Deff

# ===============================
# 15. RELATIVE STANDARD ERROR
# ===============================
RSE <-
  (SE_cluster/
     estimasi_cluster)*100

RSE

# =====================================================
# 16. ANALISIS PER INDIKATOR
# =====================================================

# -------------------------------
# Perencanaan Belajar
# P1,P17
# -------------------------------
data$perencanaan <-
  rowMeans(
    data_valid[,c(
      "P1",
      "P17"
    )]
  )

data$indeks_perencanaan <-
  (data$perencanaan/4)*100

# -------------------------------
# Disiplin Belajar
# P2,P4,P13
# -------------------------------
data$disiplin <-
  rowMeans(
    data_valid[,c(
      "P2",
      "P4",
      "P13"
    )]
  )

data$indeks_disiplin <-
  (data$disiplin/4)*100

# -------------------------------
# Strategi Belajar
# P5,P7,P19
# -------------------------------
data$strategi <-
  rowMeans(
    data_valid[,c(
      "P5",
      "P7",
      "P19"
    )]
  )

data$indeks_strategi <-
  (data$strategi/4)*100

# -------------------------------
# Fokus Belajar
# P9,P10
# -------------------------------
data$fokus <-
  rowMeans(
    data_valid[,c(
      "P9",
      "P10"
    )]
  )

data$indeks_fokus <-
  (data$fokus/4)*100

# -------------------------------
# Interaksi Belajar
# P11
# -------------------------------
data$interaksi <-
  data_valid$P11

data$indeks_interaksi <-
  (data$interaksi/4)*100

# -------------------------------
# Evaluasi Belajar
# P12
# -------------------------------
data$evaluasi <-
  data_valid$P12

data$indeks_evaluasi <-
  (data$evaluasi/4)*100

# -------------------------------
# Motivasi Belajar
# P8
# -------------------------------
data$motivasi <-
  data_valid$P8

data$indeks_motivasi <-
  (data$motivasi/4)*100

# -------------------------------
# Pemanfaatan Teknologi
# P15
# -------------------------------
data$teknologi <-
  data_valid$P15

data$indeks_teknologi <-
  (data$teknologi/4)*100

# ===============================
# 17. HASIL INDIKATOR
# ===============================
indikator <- data.frame(
  
  Indikator=c(
    "Perencanaan",
    "Disiplin",
    "Strategi",
    "Fokus",
    "Interaksi",
    "Evaluasi",
    "Motivasi",
    "Teknologi"
  ),
  
    Nilai=c(
    
    mean(data$indeks_perencanaan),
    
    mean(data$indeks_disiplin),
    
    mean(data$indeks_strategi),
    
    mean(data$indeks_fokus),
    
    mean(data$indeks_interaksi),
    
    mean(data$indeks_evaluasi),
    
    mean(data$indeks_motivasi),
    
    mean(data$indeks_teknologi)
    
  )
  
)

indikator

