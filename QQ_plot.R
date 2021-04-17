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

# Simply load library
library(qqman)

# Logistic regression with covariates. 
# results_log <- read.table("logistic_results.assoc_2.logistic", head=TRUE)
# jpeg("QQ-Plot_logistic.jpeg")
# qq(results_log$P, main = "Q-Q plot of GWAS p-values : log")
# dev.off()

# Logistic regression without any covariates. 
results_as <- na.omit(read.table("assoc_results.assoc", head=TRUE))
jpeg("QQ-Plot_assoc.jpeg")
qq(results_as$P, main = "Q-Q plot of GWAS p-values : log")
dev.off()


# Logistic regression without any covariates but adjusted p-values.. 
results_as <- na.omit(read.table("adjusted_assoc_results.assoc", head=TRUE))
jpeg("QQ-Plot_adjusted_assoc.jpeg")
qq(results_as$P, main = "Q-Q plot of GWAS adjusted p-values : log")
dev.off()