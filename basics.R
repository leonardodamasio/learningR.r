# Básico

install.packages("e1071", dependencies = TRUE) # Instalando uma biblioteca
library(e1071) # Carregando

getwd() # Get working directory
setwd("C:/Users/80704055/Desktop") # Set working directory

class(iris) # Classe do objeto
save(iris, file="arquivo.Rdata") # Salvar objeto em um arquivo
load(file="arquivo.Rdata") # Carregar objeto de um arquivo

iristeste = iris
save(iristeste, file="iristeste.Rdata")
rm(iristeste)
iristeste
load(file="iristeste.Rdata")
iristeste

# Tipo da variável

delta = 8
class(delta)

delta = 8L
class(delta)

logico = TRUE
class(logico)

logico = F
class(logico)

caractere = "Texto"
class(caractere)

# Funções básicas

sqrt(2500)
sin(90)
cos(90)
tan(90)

# Criando vetores

x = c(12,34,56,79)
y = c(1,6,9,14)

sd(x)
sd(y)

# Dados a partir do index

x[1] # Indexação começa em 1
x[0]

plot(x,y) # Plotando

x = c(1,2,3,4,5,6)
y = c("a","b","c","d")
z = c(1L,2L,3L)

x[1]
x[1] = 10

# Matrizes

VADeaths
colnames(VADeaths)
rownames(VADeaths)
VADeaths[,1] # Coluna 1
VADeaths[1,] # Linha 1

longley
longley[1,3] # Line 1, Col 3
longley$Unemployed # Coluna Unemployed
longley["Unemployed"] # Mesma coisa

#Listas

ability.cov$cov
ability.cov[1]
class(ability.cov$cov)
class(ability.cov$center)
ability.cov$cov[,1:3]
state.region

# Funções

head(x=iris, n=2)
head(iris)
head(iris,2)
head(n=2) # Erro, dados são necessários
tail(iris)
tail(iris,2)

summary(iris) # Estatística
dim(iris) # shape
length(iris) # len

# Importando arquivos

file.choose()
read.csv()
read.xlsx()
read.arff() 
odbcDriverConnect()
sqlQuery()
odbcClose()

x = read.csv(file.choose(), head = TRUE, sep = ";")

# SQL Server
install.packages("RODBC")
library(RODBC)
conexao = odbcDriverConnect("driver = {SQL Server});server=DESKTOP-UD9RQJ9\\SQLEXPRESS;database=VENDAS/trusted_connection=true")
resultado = sqlQuery(conexao," select * from dbo.vendas ")
resultado
odbcClose(Conexao)

# Excel
install.packages("xlsx")
library(xlsx)
dados = read.xlsx(file.choose(), sheetIndex=1)
dados

# Weka
install.packages("foreign")
library(foreign)
dados = read.arff(file.choose())
dados

# Ajuda
help(sd)

# Condicional

a = 10
b = 20

if (a > 10)
{
  print("A é maior")
}else
{
  print("A não é maior")
}

x = ifelse(a > 10,"A é maior", "A não é maior")
x

# Loop

for (i in 1:10) {
  print(i)
}

a = 1
while (a <= 10)
{
  print(a)
  a = a+1
}

# Criando funções

parouimpar = function(x) {
  
  return(ifelse(x%%2==0, "Par", "Ímpar"))
  
}

parouimpar(5)
parouimpar(12)

# Sair
quit()
