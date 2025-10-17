#Estatística Básica

# Parte 3 - Medidas de Posição Relativa

#Definie a área de trabalho do script R

setwd("D:/workspace/1_DSA_POWER_BI/cap12R")
getwd()

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo dos dados

head(vendas)
tail(vendas)

summary(vendas$Valor)


summary(vendas[c('Valor', 'Custo')])

#Variáveis numéricas



mean(vendas$Valor)



median(vendas$Valor)


#Informa os quartis
quantile(vendas$Valor)


#Calcular o Percentis: percentil de1% e 99%
quantile(vendas$Valor, probs = c(0.01, 0.99))


#Define um limite
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))



#Diferença entre Q3  e Q1
IQR(vendas$Valor)



#Do valor mínimo ao valor máximo do atributo
range(vendas$Valor)

#Confere se está o menor e maior mesmo
summary(vendas$Valor)

#Calcula a diferença entre o maior e o menor
diff(range(vendas$Valor))
