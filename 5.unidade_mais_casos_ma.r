library(dplyr)

par(mfrow = c(1, 1))

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')
df <- filter(data, SG_UF == 'MA')
tb <- table(df$ID_UNIDADE)

#sort tb by value
tb <- tb[order(tb)]

unidades_com_mais_casos <- tail(tb, 7)
pie(unidades_com_mais_casos, col=rainbow(7), cex=0.7, main="Unidades com mais casos no MA")

# # Média, max, min, Mediana
print('Resumo')
print(summary(unidades_com_mais_casos))

print("Desvio Padrão")
print(sd(unidades_com_mais_casos))

print("Variância:")
print(var(unidades_com_mais_casos))