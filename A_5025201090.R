
# nomor 1
# membuat data set dari tabel yang diberikan soal
Responden <- c(1,2,3,4,5,6,7,8,9)
X <- c(78,75,67,77,70,72,78,74,77)
Y <- c(100, 95,70,90,90,90,89,90,100)
tabel <- data.frame(Responden, X, Y)

# a. mencari standar deviasi dari selisih pasangan tabel pengamatan
selisih <- tabel$Y - tabel$X
sd_selisih <- sd(selisih) #sd = standar deviasi
sd_selisih

# b. cari nilai t (p-value)
t.test(x=tabel$X, y=tabel$Y,
       alternative="greater",
       mu=0.5, paired = TRUE, var.equal = TRUE,
       conf.level = 0.95)
# didapat p-value < 0.05 (alpha)
# didapat meannya tidak sama dengan 0
# dari sini, kita dapat menolak H0 yang menyatakan bahwa "tidak ada pengaruh signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A"
# kesimpulan: terdapat pengaruh signifikan

# nomor 2
install.packages("BSDA")
library(BSDA)

zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100, 
          alternative = "less", mu=20000)


#nomor 3
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, 
          mean.y = 2.79, s.y = 1.32, n.y = 27, 
          alternative = "two.sided", var.equal = TRUE, 
          conf.level = 0.95)


#nomor 4

# impor data dari dataset pada soal
data4 <- read.delim(file="onewayanova.txt")
View(data4)

install.packages("ggpubr")
library("ggpubr")

ggboxplot(data4, x="Group", y="Length",
          color = "Group", pallete=c("#00AFBB", "#E7B800", "#FC4E07"),
          order = c(1, 2, 3),
          ylab="Length", xlab="Group")

# uji anova
res.aov <- aov(Length ~ Group, data = data4)
summary(res.aov)

#Uji tukey
TukeyHSD(res.aov)


# nomor 5
data5 <- read.csv("GTL.csv")

library(ggplot2)
ggplot(data = data5, aes(Light, Glass)) +
  geom_point() + facet_grid(Temp ~ .)
  # geom_boxplot(mapping=aes(Glass, Temp))

data5$Glass <- factor(data5$Glass)
data5$Temp <- factor(data5$Temp,
                     levels = c(100, 125, 150),
                     labels = c("T100", "T125", "T150"))
data5$Glass
head(data5)
table(data5$Glass, data5$Temp)

# Install
if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/ggpubr")

library(ggpubr)
ggboxplot(data5, x="Temp", y="Light", color="Glass",
          pallete = c("#00AFBB", "#E7B800", "FFF000"))

#two way interaction plot
interaction.plot(x.factor = data5$Temp, trace.factor = data5$Glass,
                 response = data5$Light,
                 type = "b", legend=TRUE,
                 xlab="Temp", ylab = "Light",
                 pch = c(1,19), col=c("#00AFBB", "#E7B800", "#EEEEEE"))

# b. uji anova 2 arah
res.aov2 <- aov(Light ~ Glass + Temp, data = data5)
summary(res.aov2)

# c
kombin1 <- subset(data5, Temp == 'T100' & Glass=='A')
kombin2 <- subset(data5, Temp == 'T100' & Glass=='B')
kombin3 <- subset(data5, Temp == 'T100' & Glass=='C')
kombin4 <- subset(data5, Temp == 'T125' & Glass=='A')
kombin5 <- subset(data5, Temp == 'T125' & Glass=='B')
kombin6 <- subset(data5, Temp == 'T125' & Glass=='C')
kombin7 <- subset(data5, Temp == 'T150' & Glass=='A')
kombin8 <- subset(data5, Temp == 'T150' & Glass=='B')
kombin9 <- subset(data5, Temp == 'T150' & Glass=='C')


# d. uji Tukey
TukeyHSD(res.aov2)
