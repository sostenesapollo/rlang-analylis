data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')
dates = data.frame(
    encerramento = data$DT_ENCERRAMENTO,
    notificacao = data$DT_NOTIFICACAO
)
View(dates)