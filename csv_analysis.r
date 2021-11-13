# Need to install the packages via command line
# install.packages("lubridate")
# install.packages("tidyr")
library(dplyr)
library(tidyr)
library(lubridate)

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')

# Remove all the rows that don't have a value for DT_ENCERRAMENTO
data <- data[data$DT_ENCERRAMENTO != '',]
# Get just the DT_NOTIFICACAO and DT_ENCERRAMENTO in a new dataframe
dates <- select(data, DT_NOTIFICACAO, DT_ENCERRAMENTO)

# data$notificacao  <- as.Date(data$notificacao, format = '%d/%m/%Y')
# data$encerramento <- as.Date(data$encerramento, format = '%d/%m/%Y')


# datas <- data %>% 
#   drop_na(DT_ENCERRAMENTO)

# data <- data %>% filter(DT_ENCERRAMENTO == "")

# df = data.frame(notificacao= as.Date(data$DT_NOTIFICACAO, format = '%d/%m/%Y'), encerramento= as.Date(data$DT_ENCERRAMENTO, format = '%d/%m/%Y'))

# ## Agrupando e calculando a diferença entre as datas com o dplyr
# mutate(df, diferenca = encerramento - notificacao)

print(dates)
View(dates)
