programa
{
	inclua biblioteca Util

	funcao preencheMat(inteiro mat[][], inteiro size){ //Preencher a matriz
		inteiro aux  
		logico temValor = falso 
		para(inteiro i = 0; i < size; i++){
			para(inteiro j = 0; j < size; j++){
				se(size == 4){
					aux = Util.sorteia(0, 3) //Gera um número aleatório para a coluna que receberá o numero random 
				} senao {
					aux = Util.sorteia(0, 8) //Gera um número aleatório para a coluna que receberá o numero random 
				}
				
				se(j == aux e temValor == falso){
					se(size == 4){
						mat[i][j] = Util.sorteia(1, 4)
						temValor = verificaMatriz(mat, size, Util.sorteia(1, 4),i,j) //Verifica se a posição random pode receber o numero aleatório
					} senao{
						mat[i][j] = Util.sorteia(1, 9)
						temValor = verificaMatriz(mat, size, Util.sorteia(1, 9),i,j) //Verifica se a posição random pode receber o numero aleatório
					}
				}
				
			}
		}
	}
	
	funcao exibeMatriz(inteiro mat[][], inteiro size){ 
		escreva("X")
		para(inteiro j = 0; j < size; j++){
				escreva("[",j,"]") //Cabeçalho
				se(j == size-1){
					escreva(" → Colunas \n")
				} 
			}
		para(inteiro i = 0; i <= size; i++){ //Coluna de linhas
			se(size == 4){
				se(i == size){
					escreva("↳ Linhas\n")
					pare
				} senao se(i % 2 == 0 e i != 0){
					escreva("-----------\n")
					escreva(i,"|")
				} senao {
					escreva(i,"|")
				}
			} senao {
				se(i == size){
					escreva("↳ Linhas\n")
					pare
				} senao se(i % 3 == 0 e i != 0){
					escreva("---------------------------\n")
					escreva(i,"|")
				} senao {
					escreva(i,"|")
					
				}
			}
			
			
					para(inteiro j = 0; j < size; j++){
						se(size == 4){
							se(j == size-1){
							escreva(" ",mat[i][j], "\n")
							} senao se(j % 2 != 0){ //Caso seja 2, coloca a | par separar os quadrantes
								escreva(" ",mat[i][j],"|")
							} senao se(j == 0){
								escreva(mat[i][j]," ")
							}senao{
								escreva(" ",mat[i][j]," ")
							}
						} senao {
							se(j == size-1){
							escreva(" ",mat[i][j], "\n")
							} senao se(j % 3 == 0 e j != 0){ //Caso seja 2, coloca a | par separar os quadrantes
								escreva("|",mat[i][j]," ")
							} senao se(j == 0){
								escreva(mat[i][j]," ")
							}senao{
								escreva(" ",mat[i][j]," ")
							}
						}
						
						
					}
				}
	}

	funcao logico verificaMatriz(inteiro mat[][], inteiro size, inteiro num, inteiro linha, inteiro coluna){
		logico ehValido = falso
		
		para (inteiro i=0;i < size; i++){
            para (inteiro j=0;j < size; j++){
       		se (i == linha ou j == coluna){ 
       			se(mat[i][j] == num){ //Verifica se o numero passado por parametro já existe na linha e coluna da matriz
       				escreva("\nFalso -> Matriz [",i,"][",j,"] = ",mat[i][j],"\n")
       				retorne falso
       			}
       			ehValido = verdadeiro
       		}
            }
		}

		se(ehValido){
			se(size == 4){
				se(linha < 2 e coluna < 2){
					ehValido =verificaQuadrante(num,mat,size, 1)
				} senao se(linha < 2 e ((coluna >= 2) e (coluna < 4))){
					ehValido =verificaQuadrante(num,mat,size, 2)
				}senao se(((linha >= 2) e (linha < 4)) e coluna < 2){
					ehValido =verificaQuadrante(num,mat,size, 3)
				}senao se(((linha >= 2) e (linha < 4)) e ((coluna >= 2) e (coluna < 4))){
					ehValido = verificaQuadrante(num,mat,size, 4)
				}
					
			} senao {
				se(linha < 3 e coluna < 3){
					ehValido =verificaQuadrante(num,mat,size, 1)
				} senao se(linha < 3 e ((coluna >= 3) e (coluna < 6))){
					ehValido =verificaQuadrante(num,mat,size, 2)
				}senao se(linha < 3 e ((coluna >= 6) e (coluna < 9))){
					ehValido =verificaQuadrante(num,mat,size, 3)
				}senao se(((linha >= 3) e (linha < 6)) e coluna < 3){
					ehValido =verificaQuadrante(num,mat,size, 4)
				}senao se(((linha >= 3) e (linha < 6)) e ((coluna >= 3) e (coluna < 6))){
					ehValido = verificaQuadrante(num,mat,size, 5)
				}senao se(((linha >= 3) e (linha < 6)) e ((coluna >= 6) e (coluna < 9))){
					ehValido =verificaQuadrante(num,mat,size, 6)
				}senao se(((linha >= 6) e (linha < 9)) e coluna < 3){
					ehValido = verificaQuadrante(num,mat,size, 7)
				}senao se(((linha >= 6) e (linha < 9)) e ((coluna >= 3) e (coluna < 6))){
					ehValido = verificaQuadrante(num,mat,size, 8)
				}senao se(((linha >= 6) e (linha < 9)) e ((coluna >= 6) e (coluna < 9))){
					ehValido =verificaQuadrante(num,mat,size, 9)
				}
			}
				se(ehValido == falso){
					retorne falso
				}
		
		}
		retorne ehValido
	}

	funcao logico verificaQuadrante(inteiro num, inteiro mat[][], inteiro size, inteiro quadrante){
		inteiro linhaInicio = 0, linhaFim = 0, colunaInicio = 0,colunaFim = 0

		logico ehValido = verdadeiro
		se(size == 4){
			se(quadrante == 1){
				linhaInicio = 0
				linhaFim = 2
				colunaInicio = 0
				colunaFim = 2
			} senao se(quadrante == 2){
				linhaInicio = 0
				linhaFim = 2
				colunaInicio = 2
				colunaFim = 4
			}senao se(quadrante == 3){
				linhaInicio = 2
				linhaFim = 4
				colunaInicio = 0
				colunaFim = 2
			} senao se(quadrante == 4){
				linhaInicio = 2
				linhaFim = 4
				colunaInicio = 2
				colunaFim = 4
			} 
		} senao {
			se(quadrante == 1){
				linhaInicio = 0
				linhaFim = 3
				colunaInicio = 0
				colunaFim = 3
			} senao se(quadrante == 2){
				linhaInicio = 0
				linhaFim = 3
				colunaInicio = 3
				colunaFim = 6
			}senao se(quadrante == 3){
				linhaInicio = 0
				linhaFim = 3
				colunaInicio = 6
				colunaFim = 9
			} senao se(quadrante == 4){
				linhaInicio = 3
				linhaFim = 6
				colunaInicio = 0
				colunaFim = 3
			} senao se(quadrante == 5){
				linhaInicio = 3
				linhaFim = 6
				colunaInicio = 3
				colunaFim = 6
			}senao se(quadrante == 6){
				linhaInicio = 3
				linhaFim = 6
				colunaInicio = 6
				colunaFim = 9
			}  senao se(quadrante == 7){
				linhaInicio = 6
				linhaFim = 9
				colunaInicio = 0
				colunaFim = 3
			} senao se(quadrante == 8){
				linhaInicio = 6
				linhaFim = 9
				colunaInicio = 3
				colunaFim = 6
			}senao se(quadrante == 9){
				linhaInicio = 6
				linhaFim = 9
				colunaInicio = 6
				colunaFim = 9
			}
		}
		

		para(inteiro i=linhaInicio; i < linhaFim; i++){
			para(inteiro j=colunaInicio; j < colunaFim; j++){
				se(mat[i][j] == num){
					retorne falso
				}	
			}
		}
		retorne ehValido
		
	}

	funcao logico verificaSudokuCompleto(inteiro mat[][], inteiro size){
		logico ehValido = verdadeiro
		para (inteiro i=0;i < size;i++){
            para (inteiro j=0;j < size; j++){
			se(mat[i][j] == 0){
				retorne falso
			}
            }
         	}

         	retorne ehValido
		
	}

	funcao inserirValor(inteiro mat[][], inteiro size){
		inteiro linha = 0, coluna = 0, aux 
		logico ehValido = falso
		faca{
			escreva("Informe a linha: ")
			leia(linha)					
			escreva("Informe a coluna: ")
			leia(coluna)

			se((coluna >= 0 e coluna < size) e (linha >= 0 e linha < size)){
				ehValido = verdadeiro //verifica se a linha tem um valor dentro dos parâmetros válidos
			}		
			se(ehValido == falso){
				escreva("Valor inválido!\n")
			} senao {
				escreva("Informe o valor (1 até ",size,"): ")
				leia(aux)
				se(aux >= 1 e aux <= size){
					ehValido = verificaMatriz(mat, size, aux, linha, coluna)
					se(ehValido){
						mat[linha][coluna] = aux
					} senao {
						escreva("Valor inválido, verifique a linha, coluna e quadrante e insira novamente!\n")
					}
				}
			}
			
		}enquanto(ehValido == falso)
	}
	
	funcao inicio()
	{
		const inteiro sudokuEasySize = 4, sudokuHardSize = 9
		inteiro matSudoku[sudokuEasySize][sudokuEasySize],matSudokuHard[sudokuHardSize][sudokuHardSize], op
		logico completo = falso

		escreva("=-=-=-=-=-=--=-=-=-=-=-=-= Sudoku Game =-=-=-=-=-=--=-=-=-=-=-=-=\n")
		escreva("Escolha o modo de jogo\n[1] Facil\n[2] Dificil\n[0] Sair\n")
		leia(op)

		escolha(op){
			caso 1:
				preencheMat(matSudoku, sudokuEasySize)
				faca{
					limpa()
					exibeMatriz(matSudoku, sudokuEasySize)
					inserirValor(matSudoku, sudokuEasySize)
					completo = verificaSudokuCompleto(matSudoku, sudokuEasySize)

					
				}enquanto(completo != verdadeiro)

				se(completo){
					limpa()
					exibeMatriz(matSudoku, sudokuEasySize)
					escreva("PARABENS!!!!\nVocê acaba de completar o Sudoku\nDeveloped By: GuiDeitos, Nathan Oliboni, João Batista e Felipe Rocha\n")
				}
				
				pare
			caso 2:
				preencheMat(matSudokuHard, sudokuHardSize)
				faca{
					limpa()
					exibeMatriz(matSudokuHard, sudokuHardSize)
					inserirValor(matSudokuHard, sudokuHardSize)
					completo = verificaSudokuCompleto(matSudokuHard, sudokuHardSize)

					
				}enquanto(completo != verdadeiro)

				se(completo){
					limpa()
					exibeMatriz(matSudokuHard, sudokuHardSize)
					escreva("PARABENS!!!!\nVocê acaba de completar o Sudoku\nDeveloped By: GuiDeitos, Nathan Oliboni, João Batista e Felipe Rocha\n")
				}

				pare

			caso 0:
				escreva("Saindo...")
				pare
			caso contrario:
				escreva("Opção inválida")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2539; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */