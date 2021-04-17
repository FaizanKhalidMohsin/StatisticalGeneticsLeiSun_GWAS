maf_freq <- read.table("MAF_check.frq", header =TRUE, as.is=T)

# pdf
pdf("MAF_distribution_1230Indiv.pdf")
hist(maf_freq[,5],main = "MAF distribution with the remaining 1230 Individuals", xlab = "MAF")
dev.off()


# png
png("MAF_distribution_1230Indiv.png")
hist(maf_freq[,5],main = "MAF distribution with the remaining 1230 Individuals", xlab = "MAF")
dev.off()


# jpeg
jpeg("MAF_distribution_1230Indiv.jpeg")
hist(maf_freq[,5],main = "MAF distribution with the remaining 1230 Individuals", xlab = "MAF")
dev.off()





