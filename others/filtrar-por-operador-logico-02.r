data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')

df <- data[1:10, ]
df <- df[df$CO_REGIONA > 1497,  ]

View(df)