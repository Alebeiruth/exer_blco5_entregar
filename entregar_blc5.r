#biblioteca
library(VennDiagram)

#Atividade da Semana 5

#criacao das populacoes
populTotal <- 50
populA <- 15
populB <- 10
populC <- 8
populAB <- 6
populAC <- 4
populBC <- 3
populABC <- 1

#se uma pessoa for entrevistada
#qual a probabilidade dela utilizar somente um servico?
valorA <- populA - populAB - populAC + populABC
valorB <- populB - populAB - populBC + populABC
valorC <- populC - populAC - populBC + populABC

servicoUm <- (valorA + valorB + valorC) / populTotal
servicoUm 

#qual a probabilidade dela utilizar pelo menos um servico?
serviUsados <- populA + populB + populC - populAB - populAC - populBC + populABC
menosUmServico <- serviUsados / populTotal
menosUmServico

#dataframe


#diamagrama venn

draw.triple.venn(popA = 15, popB = 10, popC = 8,
                 sAB = 6, sAC = 4, sBC = 3, sABC = 1,
                 category = c("A", "B", "C"), lty="blank",
                 fill = c("skyblue", "red", "mediumorchid"))



