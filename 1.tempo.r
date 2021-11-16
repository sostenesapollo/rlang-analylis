library(dplyr)

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')

# Remove todos os dados que não tem uma data de encerramento
# Pois não temos dados de encerramento, e na subtraçao de datas dá problema
data <- data[data$DT_ENCERRAMENTO != '',]

# Criar um novo dataframe somente com a data de notificação e data de encerramento
dates <- select(data, DT_NOTIFICACAO, DT_ENCERRAMENTO)

# Converter datas para o formato de data
dates <- data.frame(
    notificacao= as.Date(dates$DT_NOTIFICACAO, format = '%d/%m/%Y'),
    encerramento= as.Date(dates$DT_ENCERRAMENTO, format = '%d/%m/%Y')
)

# Diferença em dia entre a data de encerramento e a data de notificação
tempo <- as.integer(dates$encerramento - dates$notificacao)

# Dados relacionados ao tempo
median   <- median(tempo)
mean     <- mean(tempo)
freq_abs <- table(tempo)

# Dados relacionados ao tempo
print("Mediana:")
print(median)
print("Média:")
print(mean)
print('Resumo de dados mais importantes relacionados à diferença da data de notificação e a de encerramento')
print(summary(dates))

# Plotando gráfico de barras da com a frequencia absoluta da 
# diferença de dias entre a data de notificação e a data de encerramento
barplot(t(prop.table(freq_abs)), beside = TRUE, legend = TRUE, bty = 'n', ylim = c(0, 0.06), xlab = 'Tempo (dias)', ylab = 'Frequência absoluta')