data(iris)
str(iris)
view(iris)
class(iris)
?iris

boxplot(iris$Sepal.Length)

boxplot(iris$Sepal.Length,
        main = "Box plot for Sepal length",
        ylab = "Sepal_Length",
        col = 'skyblue')
