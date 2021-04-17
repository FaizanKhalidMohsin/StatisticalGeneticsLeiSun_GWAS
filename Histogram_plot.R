# Plot Histogram of P-values of the logistic regression for the GWAS study
# If histogram has a uniform distribution then it means that the null is true. 

# Logistic regression without any covariates. 
results_as <- na.omit(read.table("assoc_results.assoc", head=TRUE))
jpeg("Histogram-Plot_assoc.jpeg")
hist(results_as$P, main = "Histogram plot of GWAS p-values : log")
dev.off()


# Logistic regression without any covariates but adjusted p-values.
results_as <- na.omit(read.table("adjusted_assoc_results.assoc", head=TRUE))
jpeg("Histogram-Plot_adjusted_assoc.jpeg")
hist(results_as$P, main = "Histogram plot of GWAS adjusted p-values : log")
dev.off()