library(dplyr)

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')

# Filtrando dados relacionados à cada estado específico e aos dois
piaui <- filter(data, SG_UF == 'PI')
maranhao <- filter(data, SG_UF == 'MA')
piaui_e_maranhao <- filter(data, SG_UF == 'PI' | SG_UF == 'MA')

print('Idade por estados:')

par(mfrow = c(1, 1))

# 
barplot(table(cut(piaui_e_maranhao$NU_IDADE_N, breaks=seq(0, 100, 10))), ylab = 'Quantidade de casos PI e MA', xlab = 'Idade',  main = 'Casos por Idades (MA e PI)', col=c("green"))

# # Gerando um dataframe com o sexo e a idade
d <- data.frame(
    estado=piaui_e_maranhao$SG_UF,
    idade=piaui_e_maranhao$NU_IDADE_N
)

# Média, max, min, Mediana
print('Resumo')
print(summary(d$idade))

print("Desvio Padrão")
print(sd(d$idade))

print("Variância:")
print(var(d$idade))