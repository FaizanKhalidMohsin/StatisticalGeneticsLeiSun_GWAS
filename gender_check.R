gender <- read.table("plink.sexcheck", header=T,as.is=T)


# pdf
pdf("Gender_check.pdf")
hist(gender[,6],main="Gender", xlab="F")
dev.off()

pdf("Men_check.pdf")
male=subset(gender, gender$PEDSEX==1)
hist(male[,6],main="Men",xlab="F")
dev.off()

pdf("Women_check.pdf")
female=subset(gender, gender$PEDSEX==2)
hist(female[,6],main="Women",xlab="F")
dev.off()


# png
png("Gender_check.png")
hist(gender[,6],main="Gender", xlab="F")
dev.off()

png("Men_check.png")
male=subset(gender, gender$PEDSEX==1)
hist(male[,6],main="Men",xlab="F")
dev.off()

png("Women_check.png")
female=subset(gender, gender$PEDSEX==2)
hist(female[,6],main="Women",xlab="F")
dev.off()

# jpeg
jpeg("Gender_check.jpeg")
hist(gender[,6],main="Gender", xlab="F")
dev.off()

jpeg("Men_check.jpeg")
male=subset(gender, gender$PEDSEX==1)
hist(male[,6],main="Men",xlab="F")
dev.off()

jpeg("Women_check.jpeg")
female=subset(gender, gender$PEDSEX==2)
hist(female[,6],main="Women",xlab="F")
dev.off()