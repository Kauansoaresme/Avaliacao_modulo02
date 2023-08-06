algoritmo "Agencia de viagens"

//ALUNO: Kauan Soares de Oliveira
// PERIDO: Tarde
var
opcao: inteiro
cadastro: caractere
indice,totPessoas,totDestino: inteiro
nome: vetor[1..10] de caractere
destino: vetor[1..10] de caractere

Procedimento cadastrar ()
inicio
         cadastro <- "s"
         indice <- 1
         Enquanto (cadastro = "S") ou (cadastro = "s") faca
         EscrevaL ("==============================")
                  Escreval ("Digite o nome do passageiro:")
                  Leia (nome[indice])
                  Escreval ("Digite o destino:")
                  leia (destino[indice])
                  indice <- indice +1
                  totPessoas <- totPessoas + 1
                  totDestino <- totDestino + 1
                  Escreval ("Deseja cadastrar mais alguém? S/N")
                  Leia (cadastro)
         fimenquanto
fimprocedimento

procedimento consultar ()
var
ind: inteiro
consult,cont: caractere
achou: logico
inicio
      cont <- "s"

      Enquanto (cont = "s") ou (cont = "S") faca
            ind <- 1
      escreval ("===========================")
               achou <- falso
               Escreva ("Informe o nome do passageiro: ")
               leia (consult)
               enquanto (ind <= totPessoas) e (achou = falso) faca
                    se consult = nome[ind] entao
                       achou <- verdadeiro
                    senao
                       ind <- ind +1
                    fimse
               fimenquanto
               se ind <= totPessoas entao
                  Escreval ("O passageiro ",nome[ind]," tem como destino ",destino[ind],".")
               senao
                    escreval ("Pessoa não encontrada!")
               fimse
               Escreval ("Deseja continuar consultando? S/N")
               leia (cont)
      fimenquanto

fimprocedimento


inicio
      repita
      limpatela
         EscrevaL ("==============================")
         EscrevaL ("Agencia de viagens Recode Pro ")
         EscrevaL ("==============================")
         Escreval ("    Seja Bem-Vindo            ")
         EscrevaL ("")
         EscrevaL ("    O que deseja?")
         Escreval ("Cadastrar (1)")
         Escreval ("Consultar (2)")
         Escreval ("Sair (3)")
         Leia (opcao)
         LimpaTela
         Escolha opcao
                 caso 1
                      cadastrar()
                 caso 2
                      consultar()
                 caso 3
                      Escreva ("Fim do programa!")
                 outrocaso
                      Escreva ("Escolha invalida!")
         FimEscolha
      ate opcao = 3
fimalgoritmo