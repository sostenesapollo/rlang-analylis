df = data.frame(
    idades=c(18, 20, 25, 30, 20, 20, 23, 20, 20, 54, 23, 70, 54, 80, 15, 19, 25, 24),
    salario=c(1843, 6520, 525, 330, 135, 410, 453, 504, 500, 6000, 4465, 3730, 2275, 1180, 3485, 1349, 3450, 7384),
    sexo=c("m", "f", "m", "m", "m", "f", "m", "f", "m", "m", "m", "f", "m", "f", "m", "m", "m", "f")
)

View(df)
# plot(x=df$sexo, y=df$idades, pch=20, col="red", xlab="Idade", ylab="Salário")

variancia = var(df$idades)
desvio_padrao = sd(df$idades)

print(variancia)
print(desvio_padrao)

# tb <- with(df, table(df$sexo, df$salario))
# addmargins(tb) 
View(table(cut(df$idades, breaks= quantile(df$idades))))