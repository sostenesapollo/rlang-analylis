data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')
df <- data[1:10, ]

df <- df[df$SG_UF_NOT == 'PE',  ]
df <- df[df$SEM_NOT == 2,  ]

View(df)