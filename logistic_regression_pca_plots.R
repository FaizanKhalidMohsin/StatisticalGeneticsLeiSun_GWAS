# Chi-square test

# We use the qqman package to create the manhattan and Q-Q plots. We use base R to create the historgram plot. 
require(qqman)
require(data.table)
# R code to read in the data from the plink output into R. 
results_logistic_pca <- fread("logistic_pca_results.assoc_2.logistic", head=TRUE)

# Create and save the Manhattan-plot.
jpeg("Manhattan_logistic_pca_final.jpeg")
manhattan(results_logistic_pca, ylim = c(0, 8.5), col = c("blue4", "orange3"), 
          chr="CHR",bp="BP",p="P",snp="SNP", main = "Manhattan plot: logistic with pca"
          , annotatePval = 0.000001
)
abline( h= -log10(5*10^(-8)), col = "red")
abline( h= -log10(1*10^(-5)), col = "blue")
dev.off()  



# Create and save the QQ-plot. 
jpeg("QQ-Plot_logistic_pca_final.jpeg")
qq(results_logistic_pca$P, main = "Q-Q plot of logistic regression with pca GWAS p-values : log")
dev.off()

# Create and save the Historgram-plot
jpeg("Histogram_logistic_pca_final.jpeg")
hist(results_logistic_pca$P, main = "Histogram plot of logistic regression with pca GWAS p-values : log")
dev.off()
