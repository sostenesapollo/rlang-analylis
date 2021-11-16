data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')
id <- data[1:nrow(data), ]$NU_IDADE_N
c  <- cut(id, seq(0,100))
barplot(table(c))