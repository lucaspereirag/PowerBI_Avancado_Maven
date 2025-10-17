
#Define a pasta de trabalha onde o script está alocado
setwd("D:/workspace/1_DSA_POWER_BI/cap12R")

#Evidencia o local do script salvo
getwd()

# Carrega um dataset para trabalhar
vendas <- read.csv("Vendas.csv", fileEncoding =  "windows-1252")

# Resume o Dataset
View(vendas) #abre uma grid no R Studio com os dados

#Evidencia todas as variáveis e seus tipos de dados
str(vendas)

#Evidencia um sumário estatistico de uma coluna
summary(vendas$Valor)

summary(vendas$Custo)




#Calcula a Média
?mean  #pergunta pro R Studio e ele fornece uma ajuda

#Calcula a média de uma coluna do dataset
mean(vendas$Valor)
mean(vendas$custo)


#Média Ponderada
?weighted.mean

weighted.mean(vendas$Valor, w = vendas$Custo)






#Mediana
median(vendas$Valor)

median(vendas$Custo)



#Moda
#Sintaxe:nome_funcao <- function(parametro_generico){codigo}
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

#Ober a moda:
resultado <- moda(vendas$Valor)
print(resultado)


resultado_custo_moda <- moda(vendas$Custo)

print(resultado_custo_moda)





#Instala um pacote
install.packages("ggplot2")
library(ggplot2)


#Cria o gráfico de Média de Valor por Estado
#nome da funcao: ggplot
#nome do pacote: ggplot2

ggplot(vendas) +
    stat_summary(aes(x = Estado,
                     y = Valor),
                 fun = mean,
                 geo = "bar",
                 fill = "lightblue",
                 col = "grey50") +
    labs(title = "Média de Valor por Estado")


