# Need to install the packages via command line
# install.packages("lubridate")
# install.packages("dplyr")
library(dplyr)

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')

# # Remove todos os dados que não tem uma data de encerramento
# # Pois não temos dados de encerramento, e na subtraçao de datas dá problema
# data <- data[data$DT_ENCERRAMENTO != '',]

# # Criar um novo dataframe somente com a data de notificação e data de encerramento
# dates <- select(data, DT_NOTIFICACAO, DT_ENCERRAMENTO)

# # Converter datas para o formato de data
# dates <- data.frame(
#     notificacao= as.Date(dates$DT_NOTIFICACAO, format = '%d/%m/%Y'),
#     encerramento= as.Date(dates$DT_ENCERRAMENTO, format = '%d/%m/%Y')
# )

# # Diferença em dia entre a data de encerramento e a data de notificação
# tempo <- as.integer(dates$encerramento - dates$notificacao)

# # Dados relacionados ao tempo
# median   <- median(tempo)
# mean     <- mean(tempo)
# freq_abs <- table(tempo)

# # Dados relacionados ao tempo
# print(median)
# print(mean)
# print('Resumo de dados mais importantes relacionados à diferença da data de notificação e a de encerramento')
# print(summary(dates))

# # Plotando gráfico de barras da com a frequencia absoluta da 
# # diferença de dias entre a data de notificação e a data de encerramento

# graf_barra3 = barplot(t(prop.table(freq_abs)), beside = TRUE, legend = TRUE, bty = 'n', ylim = c(0, 0.06), xlab = 'Tempo (dias)', ylab = 'Frequência absoluta')


###### Quantificando dados 
estados             <- data$SG_UF_NOT
sexo                <- data$CS_SEXO
idade               <- data$NU_IDADE_N
municipio           <- data$ID_MUNICIP
unidade             <- data$CO_UNI_NOT
data_nascimento     <- data$DT_NASC

piaui <- filter(data, SG_UF_NOT == 'PI')
maranhao <- filter(data, SG_UF_NOT == 'MA')

piaui_e_maranhao <- filter(data, SG_UF_NOT == 'PI' | SG_UF_NOT == 'MA')

print("---")
print(summary(piaui_e_maranhao))

View(pi)
# print(count(ma))
# print(count(sp))

# pir = pie(table(c(count(piaui), count(maranhao))), density=40,  cex=0.5,  main = 'Quantidade de notificações PI-MA')
# df = table(
#     maranhao= ma,
#     piaui= pi
# )
# print(c(count(piaui), count(maranhao)))
# graf_barra3 = barplot(df, beside = TRUE, bty = 'n', col="#69b3a2", main = 'Quantidade de casos por idade (0 a 106 anos)')

# print('piaui quantidade de notificações')
# print(df)

# op <- par(mfrow = c(2, 2))

# # 1. Estado
# print('Resumo de dados mais importantes relacionados ao estado')
# print('Resumo de dados mais importantes relacionados à diferença da data de notificação e a de encerramento')
# print(summary(dates))

pir = pie(table(piaui_e_maranhao$SG_UF_NOT), density=40,  cex=0.5,  main = 'Quantidade de casos notificados por estado', col = rainbow(length(table(estados))))

# # 2. Sexo
# print('Resumo de dados mais importantes relacionados ao sexo dos pacientes')
# pir = pie(table(sexo), density=40, main = 'Quantidade de casos por sexo', col=c("purple", "green", "grey"))

# # 3. Municipio
print('Resumo de dados mais importantes relacionados ao municipio')
print(table(municipio))
# pir = pie(head(municipio), main = 'Quantidade de casos por municipio')

# # 4. Unidade                                            
# print('Resumo de dados mais importantes relacionados a unidade de notificação')
# pir = pie(table(unidade)[100], main = 'Quantidade de casos por unidade de notificação')

# # 5. Idade
# print('Resumo de dados mais importantes relacionados a idade')

# print(class(table(idade)))
# print(table(idade))

# graf_barra3 = barplot(table(idade), beside = TRUE, bty = 'n', col="#69b3a2", main = 'Quantidade de casos por idade (0 a 106 anos)')

# par(op)

# View(idade)