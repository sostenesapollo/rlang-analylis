df = data.frame(
    idades=c(18, 20, 25, 30, 20, 20, 23, 20, 20, 54, 23, 70, 54, 80, 15, 19, 25, 24),
    salario=c(1843, 6520, 525, 330, 135, 410, 453, 504, 500, 6000, 4465, 3730, 2275, 1180, 3485, 1349, 3450, 7384)
)

View(df)
plot(x=df$idades, y=df$salario, pch=20, col="red", xlab="Idade", ylab="Salário")