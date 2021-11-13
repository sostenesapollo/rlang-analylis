# Need to install the packages via command line
# install.packages("lubridate")
# install.packages("tidyr")
library(dplyr)

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')

# Remove all the rows that don't have a value for DT_ENCERRAMENTO
data <- data[data$DT_ENCERRAMENTO != '',]
# Get just the DT_NOTIFICACAO and DT_ENCERRAMENTO in a new dataframe
dates <- select(data, DT_NOTIFICACAO, DT_ENCERRAMENTO)

dates <- data.frame(
    notificacao= as.Date(dates$DT_NOTIFICACAO, format = '%d/%m/%Y'),
    encerramento= as.Date(dates$DT_ENCERRAMENTO, format = '%d/%m/%Y')
)

dates$diferenca_dias <- as.integer(dates$encerramento - dates$notificacao)

print(dates)
View(dates)
