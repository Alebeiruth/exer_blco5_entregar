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

#dataframe

dfPopulacao <- expand.grid( populacaoTotal = populTotal, populacaoA = populA, 
                            populacaoB = populB, populacaoC = populC,
                            populacaoAB = populAB, populacaoAC = populAC,
                            populacaoBC = populBC, populacaoABC = populABC)
dfPopulacao


pop <- paste(dfPopulacao$populacaoTotal, dfPopulacao$populacaoA, dfPopulacao$populacaoB,
             dfPopulacao$populacaoC, dfPopulacao$populacaoAB, dfPopulacao$populacaoAC,
             dfPopulacao$populacaoBC, dfPopulacao$populacaoABC)
pop

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

#diamagrama venn

draw.triple.venn(areaA = 15, areaB = 10, areaC = 8,
                 n12 = 6, n23 = 3, n13 = 4, # areaAB, areaBC, areaAC, respectivamente
                 n123 = 1, # área de interseção entre A, B e C
                 category = c("A", "B", "C"), # Categorias para os conjuntos A, B e C
                 fill = c("skyblue", "red", "green")) # Cores para A, B e C

