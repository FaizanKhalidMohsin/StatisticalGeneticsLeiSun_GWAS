# Install the following packages if not already installed and then load package.
#packages = c("qqman")

## Now load or install&load all necessary packages
# package.check <- lapply(
#   packages,
#   FUN = function(x) {
#     if (!require(x, character.only = TRUE)) {
#       install.packages(x, dependencies = TRUE)
#       library(x, character.only = TRUE)
#     }
#   }
# )


# Simply load package. 
library(qqman)


#install.packages("qqman",repos="http://cran.cnr.berkeley.edu/",lib="~" ) # location of installation can be changed but has to correspond with the library location 
#library("qqman",lib.loc="~")  

# Logistic regression with covariates. 
# results_log <- read.table("logistic_results.assoc_2.logistic", head=TRUE)
# jpeg("Logistic_manhattan.jpeg")
# manhattan(results_log,chr="CHR",bp="BP",p="P",snp="SNP", main = "Manhattan plot: logistic")
# dev.off()

results_as <- na.omit(read.table("assoc_results.assoc", head=TRUE))
jpeg("assoc_manhattan.jpeg")
manhattan(results_as,chr="CHR",bp="BP",p="P",snp="SNP", main = "Manhattan plot: assoc", na.rm=TRUE)
dev.off()  


results_adj_as <- na.omit(read.table("adjusted_assoc_results.assoc", head=TRUE))
jpeg("adj_assoc_results_manhattan.jpeg")
manhattan(results_adj_as,chr="CHR",bp="BP",p="P",snp="SNP", main = "Manhattan plot: adjusted assoc", na.rm=TRUE)
dev.off() 


# hist(results_as$P)

# sum(is.na(results_as$P))
# Comment on how the pca affects the 
# What if we ignore rare (allele) variant (this is not rare race?). How will the analysis look like. 
# maf (minor allele frequency) any allele that is less than 5% then that variant is rarew. 