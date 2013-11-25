#----------------------------------------------
#Script para o capitulo "Cognição e envelheciemtno:métodos de pesquisa"
#---------------------------------------------
#Exemplo 1:
sexo <- c("F","M", "F", "F", "F","M","M", "F", "F", "F", "M") #entrada dos dados
table(sexo) #frequencia absoluta
prop.table(table(sexo)) #proporção
100*table(sexo)/length(sexo) #frequencia relativa (%)
barplot(table(sexo)) #gráfico em barras
pie(table((sexo))) #gráfico em setores
#----------------------------------------
#Exemplo 2:
idade <- c(18, 27, 37, 41, 43, 53, 53, 60, 65, 78)  #entrada dos dados
hist(idade)
stem(idade)
mean(idade)	# média dos dados
median(idade) 	# mediana
max(idade) 	# valor máximo
min(idade) 	# valor minimo
range(idade)	#amplitude total (min(x) e o max(x))
length(idade)	# número de itens
var(idade)	# variância
sd(idade)		# desvio-padrão
summary(idade)	# apresenta um resumo estatistico
boxplot(idade)
qqnorm(idade)
#-----------------------------------
#Exemplo 3:
idade<- c(76,60,70,72,69,73,64,70,88,66)
summary(idade)
sd(idade)
meem<- c(27,29,27,18,27,25,28,24,25,28)
summary(meem)
sd(meem)
plot(idade, meem)
cor.test(idade, meem)
#-------------------------------------
# Exemplo 4:
# Teste t (para amostras independentes)
teste.inteligencia = data.frame(ID=1:10, homens=100:109, mulheres=111:120) #cria uma data frame de dados para análise
teste.inteligencia #mostra os dados
attach(teste.inteligencia) #utilizado para desmembrar as variáveis
t.test(homens,mulheres) #realiza o teste t para amostras indepentes
boxplot(homens, mulheres) #mostra o gráfico
#-------------------------------------------
#Exemplo 5:
#anova
placebo = c(5,10,7,3,5,7,11,2,3,5,6,6)
pouco.alc = c(5,7,9,8,2,5,6,6,4,4,8,10)
muito.alc = c(8,10,8,9,11,15,7,11,8,8,17,11)
dados =data.frame(grupo=gl(3,12),resultado=c(placebo,pouco.alc,muito.alc))
dados
attach(dados)
grupo = factor(grupo)
is.factor(grupo)

modelo.anova = aov(resultado~grupo)
summary(modelo.anova)
boxplot(placebo, pouco.alc, muito.alc) 
#------------------------------------
#Exemplo 6: Análise de regressão
escore.teste = c(175, 168, 170, 171, 169, 165, 165, 160, 180, 186)
idade = c(80, 68, 72, 75, 70, 65, 62, 60, 85, 90)
modelo.regressao <- lm(escore.teste ~ idade)
modelo.regressao
summary(modelo.regressao)
plot(idade, escore.teste)
abline(modelo.regressao)
