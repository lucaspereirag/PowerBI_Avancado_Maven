#ESTATÍSTICA BÁSICA

#PARTE 2 - Medidas de Dispersão


#Seta o local do script
setwd("D:/workspace/1_DSA_POWER_BI/cap12R")
getwd()


#Carrega o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)

#Resumo das estatísticas básicas
summary(vendas)

#Variância
var(vendas$Valor)


#Desvio-padrão
sd(vendas$Valor )