#Load the data set
data <- read.csv('HR_comma_sep.csv')


#data exploration
head(data)


summary(data)


dim(data)


#checking for correlation
cor(data[1:5])

#Standardizing the features
data_standardize <- as.data.frame(scale(data[1:5]))
head(data_standardize)


#Covariance Matrix
data.mat <- as.matrix(data_standardize)
cov.mat <- cor(data_standardize)
head(cov.mat)


#Computing PCA
pca <- prcomp(data_standardize,center=T,scale=T)
summary(pca)


#PCA visualization
library(ggfortify)
autoplot(pca, data = data, colour = 'salary')