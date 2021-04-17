
# # pdf
# 
# hwe<-read.table (file="plink.hwe", header=TRUE)
# pdf("histhwe.pdf")
# hist(hwe[,9],main="Histogram HWE")
# dev.off()
# 
# hwe_zoom<-read.table (file="plinkzoomhwe.hwe", header=TRUE)
# pdf("histhwe_below_theshold.pdf")
# hist(hwe_zoom[,9],main="Histogram HWE: strongly deviating SNPs only")
# dev.off()


# jpeg

hwe<-read.table (file="plink.hwe", header=TRUE)
jpeg("histhwe.jpeg")
hist(hwe[,9],main="Histogram HWE")
dev.off()

hwe_zoom<-read.table (file="plinkzoomhwe.hwe", header=TRUE)
jpeg("histhwe_below_theshold.jpeg")
hist(hwe_zoom[,9],main="Histogram HWE: strongly deviating SNPs only")
dev.off()


# png

hwe<-read.table (file="plink.hwe", header=TRUE)
png("histhwe.png")
hist(hwe[,9],main="Histogram HWE")
dev.off()

hwe_zoom<-read.table (file="plinkzoomhwe.hwe", header=TRUE)
png("histhwe_below_theshold.png")
hist(hwe_zoom[,9],main="Histogram HWE: strongly deviating SNPs only")
dev.off()