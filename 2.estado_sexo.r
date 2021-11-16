library(dplyr)

data = read.csv('INFLUD19-16042020.csv', header=TRUE, sep=';')

# Filtrando dados relacionados à cada estado específico e aos dois
piaui <- filter(data, SG_UF_NOT == 'PI')
maranhao <- filter(data, SG_UF_NOT == 'MA')
piaui_e_maranhao <- filter(data, SG_UF_NOT == 'PI' | SG_UF_NOT == 'MA')

print('Total de casos por estados:')

# Gerando um dataframe com o sexo e o estado
d <- data.frame(
    sexo=piaui_e_maranhao$CS_SEXO,
    estado=piaui_e_maranhao$SG_UF_NOT
)

# Geração de tabela mostrando o total de casos por estado ( PI e MA )
View(table(d))

# Define o formato do painel que serão plotados os gráficos
par(mfrow = c(2, 1))

# Gráfico de pizza comparando os casos totais do PI e MA
pie(table(piaui_e_maranhao$SG_UF_NOT), density=40,  cex=0.5,  main = 'Quantidade de casos notificados por estados (PI | MA)', col = rainbow(2))
# Gráfico de barras comparando os casos por sexo nos estados do PI e MA
barplot(table(d$sexo), ylab = 'Quantidade de casos',  main = 'Pacientes nos estados PI e MA (por Sexo)', col=c("#feb8c7", "green", "#8a9a5b"))
