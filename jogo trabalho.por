programa
{
    funcao inicio()
    {
        inteiro reiniciar = 1

        enquanto(reiniciar == 1)
        {
            inteiro vida = 100
            inteiro fase = 1
            inteiro op
            inteiro curativo = 0
            inteiro machado = 0

            enquanto(vida > 0)
            {

                se(fase == 1)
                {
                    escreva("\n=== QUEDA DO HELICOPTERO ===\n")
                    escreva("Você cai em uma ilha cheia de ruinas.\n")
                    escreva("1-Explorar a floresta\n")
                    escreva("2-Procurar sobreviventes\n")
                    escreva("3-Ficar no local do acidente\n")
                    leia(op)

                    escolha(op)
                    {
                        caso 1:
                        escreva("Você encontra uma mochila com itens.\n")
                        curativo = 1
                        machado = 1
                        fase = 2
                        pare

                        caso 2:
                        escreva("Você encontra canibais te observando...\n")
                        fase = 3
                        pare

                        caso 3:
                        escreva("Você morreu esperando ajuda.\n")
                        vida = 0
                        pare
                    }
                }

                senao se(fase == 2)
                {
                    escreva("\n=== FLORESTA PROFUNDA ===\n")
                    escreva("Você segue trilhas estranhas.\n")
                    escreva("1-Ir para caverna\n")
                    escreva("2-Ir para praia\n")
                    escreva("3-Comer frutas suspeitas\n")
                    leia(op)

                    escolha(op)
                    {
                        caso 1:
                        fase = 4
                        pare

                        caso 2:
                        escreva("Você encontra um barco destruído.\n")
                        fase = 5
                        pare

                        caso 3:
                        escreva("As frutas eram venenosas.\n")
                        vida = 0
                        pare
                    }
                }

                senao se(fase == 3)
                {
                    escreva("\n=== CANIBAIS ===\n")
                    escreva("Eles te cercam.\n")
                    escreva("1-Lutar\n")
                    escreva("2-Fugir\n")
                    leia(op)

                    escolha(op)
                    {
                        caso 1:
                        se(machado == 1)
                        {
                            escreva("Você matou alguns canibais mas se feriu.\n")
                            vida = vida - 40
                            fase = 4
                        }
                        senao
                        {
                            escreva("Você morreu sem armas.\n")
                            vida = 0
                        }
                        pare

                        caso 2:
                        escreva("Você foge para uma caverna.\n")
                        fase = 4
                        pare
                    }
                }

                senao se(fase == 4)
                {
                    escreva("\n=== CAVERNA ===\n")
                    escreva("Você encontra um mutante gigante dormindo.\n")
                    escreva("1-Fugir\n")
                    escreva("2-Enfrentar\n")
                    escreva("3-Explorar silenciosamente\n")
                    leia(op)

                    escolha(op)
                    {
                        caso 1:
                        escreva("Você foge e encontra um rádio.\n")
                        fase = 6
                        pare

                        caso 2:
                        se(machado == 1)
                        {
                            escreva("Você derrota o mutante, mas fica muito ferido.\n")
                            vida = vida - 60
                            fase = 6
                        }
                        senao
                        {
                            escreva("O mutante te destruiu.\n")
                            vida = 0
                        }
                        pare

                        caso 3:
                        escreva("Você acha um kit médico.\n")
                        curativo = 1
                        fase = 6
                        pare
                    }
                }

                senao se(fase == 5)
                {
                    escreva("\n=== PRAIA ===\n")
                    escreva("Você encontra um barco quebrado.\n")
                    escreva("1-Consertar barco\n")
                    escreva("2-Nadar até longe\n")
                    leia(op)

                    escolha(op)
                    {
                        caso 1:
                        escreva("Você conserta e escapa da ilha!\n")
                        vida = 0
                        pare

                        caso 2:
                        escreva("Você foi atacado por criaturas marinhas.\n")
                        vida = 0
                        pare
                    }
                }

                senao se(fase == 6)
                {
                    escreva("\n=== FINAL ===\n")
                    escreva("Um helicóptero aparece no rádio.\n")
                    escreva("1-Pedir resgate\n")
                    escreva("2-Ir sozinho pela floresta\n")
                    leia(op)

                    escolha(op)
                    {
                        caso 1:
                        escreva("RESGATE CHEGOU! VOCÊ ESCAPOU!\n")
                        vida = 0
                        pare

                        caso 2:
                        escreva("Você se perdeu e morreu na floresta.\n")
                        vida = 0
                        pare
                    }
                }

            }

            escreva("\n===== FIM DE JOGO =====\n")
            escreva("Deseja jogar novamente?\n1-Sim\n2-Não\n")
            leia(reiniciar)
        }

        escreva("Obrigado por jogar!\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6262; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */