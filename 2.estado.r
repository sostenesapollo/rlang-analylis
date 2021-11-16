library(dplyr)

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')

# Filtrando dados relacionados à cada estado específico e aos dois
piaui <- filter(data, SG_UF_NOT == 'PI')
maranhao <- filter(data, SG_UF_NOT == 'MA')
piaui_e_maranhao <- filter(data, SG_UF_NOT == 'PI' | SG_UF_NOT == 'MA')

print('Total de casos por estados:')

print('piaui:')
print(nrow(piaui))

print('maranhao:')
print(nrow(maranhao))

print('piaui_e_maranhao:')
print(nrow(piaui_e_maranhao))
print(summary(piaui_e_maranhao))
table(piaui_e_maranhao)

pir = pie(table(piaui_e_maranhao$SG_UF_NOT), density=40,  cex=0.5,  main = 'Quantidade de casos notificados por estado', col = rainbow(length(table(estados))))

# tempo_notificacao_ate_raio_x <- as.integer(dates$encerramento - dates$notificacao)

# print(summary(tempo_notificacao_ate_raio_x))

# pir = pie(table(tempo_notificacao_ate_raio_x), density=40,  cex=0.5,  main = 'Quantidade de casos notificados por estado', col = rainbow(length(table(estados))))
