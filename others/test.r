# install.packages("skimr")
library("skimr")
values = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')

ten_first <- values[1:10,]
print(skim(values))
