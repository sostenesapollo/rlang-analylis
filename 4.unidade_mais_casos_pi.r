library(dplyr)

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')
df <- filter(data, SG_UF_NOT == 'PI')
tb <- table(df$ID_UNIDADE)

#sort tb by value
tb <- tb[order(tb)]

unidades_com_mais_casos <- tail(tb, 7)
pie(unidades_com_mais_casos, col=rainbow(7), cex=0.7, main="Unidades com mais casos no PI")

# # Média, max, min, Mediana
print('Resumo')
print(summary(d$idade))

print("Desvio Padrão")
print(sd(d$idade))

print("Variância:")
print(var(d$idade))