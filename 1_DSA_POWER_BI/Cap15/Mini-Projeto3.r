#Define a pasta de trabalho
setwd("D:/workspace/1_DSA_POWER_BI/Cap15")

getwd()



#Instala os pacotes para o projeto


install.packages("Amelia") #Funções para tratar valores ausentes
install.packages("caret")  #Construir modelos de machine learning
install.packages("ggplot2") #Construção de gráficos
install.packages("dplyr")   #Tratamento de dados
install.packages("reshape")  #Modificar os formatos de dados - manipulação
install.packages("randomForest") #Trabalhar com ML 
install.packages("e1071")        #Trabalhar com ML


#Carrega os pacotes
library(Amelia)
library(caret)
library(ggplot2)
library(dplyr)
library(reshape)
library(randomForest)
library(e1071)




#Carregando o dataset
#Fonte: 


dados_clientes <- read.csv("dataset.csv")


#Visualiza os dados e as estruturas
View(dados_clientes)

#Verificam os tipos de dadosss
str(dados_clientes)
summary(dados_clientes)

#consulta linhas e colunas
dim(dados_clientes)


#visualiza uma coluna em especifíco

View(dados_clientes$Genero)



# ************** Remove Colunas **************

# no caso o ID (não necessário)

# Remove a primeira coluna
dados_clientes$ID <- NULL

View(dados_clientes)



# ************** Renomeando a coluna de classe **************

# Checa quais nomes das colunas
colnames(dados_clientes)

# Faz a alteração e renomeia 
colnames(dados_clientes)[24] <- "Inadimplentes"




# Verificando valores ausentes e removendo do dataset
sapply(dados_clientes, function(x) sum(is.na(x)))
#nesse arquivo de dados não há nenhum


# Checa de qual biblioteca é
?missmap


# Retorna se há valores ausentes através de gráfico
missmap(dados_clientes, main = "Valores Missing Observados")


# Se for necessário transformação, ocultará os valores ausentes.
dados_clientes <- na.omit(dados_clientes)







# ************** Converte os atributos (variáveis numéricas em categóricas
# e vice-versa) **************


# Checa os tipos de dados
str(dados_clientes)

# Checa os nomes das colunas
colnames(dados_clientes)


colnames(dados_clientes)[2] <- "Genero"
colnames(dados_clientes)[3] <- "Escolaridade"
colnames(dados_clientes)[4] <- "Estado_Civil"
colnames(dados_clientes)[5] <- "Idade"

colnames(dados_clientes)


View(dados_clientes)













