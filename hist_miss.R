

# read data into R 
indmiss<-read.table(file="plink.imiss", header=TRUE)
snpmiss<-read.table(file="plink.lmiss", header=TRUE)

# pdf
pdf("histimiss.pdf") #indicates pdf format and gives title to file
hist(indmiss[,6],main="Histogram individual missingness") #selects column 6, names header of file

pdf("histlmiss.pdf") 
hist(snpmiss[,5],main="Histogram SNP missingness")  
dev.off() # shuts down the current device

# png
png("histimiss.png") #indicates pdf format and gives title to file
hist(indmiss[,6],main="Histogram individual missingness") #selects column 6, names header of file

png("histlmiss.png") 
hist(snpmiss[,5],main="Histogram SNP missingness")  
dev.off() # shuts down the current device

# jpeg
jpeg("histimiss.jpeg") #indicates pdf format and gives title to file
hist(indmiss[,6],main="Histogram individual missingness") #selects column 6, names header of file

jpeg("histlmiss.jpeg") 
hist(snpmiss[,5],main="Histogram SNP missingness")  
dev.off() # shuts down the current device