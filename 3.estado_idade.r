library(dplyr)

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')

# Filtrando dados relacionados à cada estado específico e aos dois
piaui <- filter(data, SG_UF_NOT == 'PI')
maranhao <- filter(data, SG_UF_NOT == 'MA')
piaui_e_maranhao <- filter(data, SG_UF_NOT == 'PI' | SG_UF_NOT == 'MA')

print('Idade por estados:')

par(mfrow = c(1, 1))

barplot(table(piaui_e_maranhao$NU_IDADE_N), ylab = 'Quantidade de casos PI e MA', xlab = 'Idade',  main = 'Casos por Idades (MA e PI)', col=c("#feb8c7", "green", "#8a9a5b"))


# # Gerando um dataframe com o sexo e a idade
d <- data.frame(
    estado=piaui_e_maranhao$SG_UF_NOT,
    idade=piaui_e_maranhao$NU_IDADE_N
)

print(median(d$idade))
print(mean(d$idade))
print(table(d$idade))