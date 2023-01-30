iris.labels = iris$Species

table(iris.labels)

iris_data <- iris[1:4]

#Scale Data
iris_data_scale <- scale(iris_data)

#Distance
iris_data <- dist(iris_data_scale)

#Calculate K 
fviz_nbclust(iris_data_scale, kmeans, method = 'wss') + 
  labs(subtitle = 'elbow method')

#Kmeans
km.out <- kmeans(iris_data_scale, centers = 3, nstart = 1000)
print(km.out)

#viz clustering 
km.clusters <- km.out$cluster
rownames(iris_data_scale) <- paste(iris$Species, 1:dim(iris)[1], sep = "_")
fviz_cluster(list(data=iris_data_scale, clusters = km.clusters))

