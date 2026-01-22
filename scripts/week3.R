data(iris)

#Inspect the data
?iris
head(iris,3)
str(iris)
class(iris)

#count the each species
iris$Species
View(iris)

barplot(
  table(iris$Species),
  main = "count of Iris Species",
  xlab = "species",
  ylab = "Number of Items",
  col = 'steelblue'
)

mean_sepal <-tapply(iris$Sepal.Length,iris$Species,mean)
mean_sepal

barplot(
  mean_sepal,
  col = 'orange',
  main ="Average Sepal Length by species",
  xlab = "species"
  ylab = "mean Sepal Length"
)
group_means <-rbind(
  sepal = tapply(iris$Sepal.Length, iris$Species, mean),
  petal = tapply(iris$Sepal.Length, iris$Species, mean)
  
)
group_means

barplot(
  group_means,
  beside = TRUE,
  col = c("skyblue","pink"),
  legend.text = TRUE,
  main = "clustered Bar Chart:Sepal vs Petal Length"
)

barplot(
  group_means,
  beside = FALSE,
  col = c("skyblue","pink"),
  legend.text = TRUE,
  main = "clustered Bar Chart:Sepal vs Petal Length"
)
