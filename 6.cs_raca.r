library(dplyr)

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')
df <- filter(data, SG_UF_NOT == 'MA')
tb <- table(df$CS_RACA);

# unidades_com_mais_casos <- tail(tb, 7)
pie(tb, cex=0.7, main="Casos por CS_RACA no estado do Maranhão")

# # Média, max, min, Mediana
print('Resumo')
print(summary(tb))

print("Desvio Padrão")
print(sd(tb))

print("Variância:")
print(var(tb))