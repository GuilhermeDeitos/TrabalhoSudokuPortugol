programa
{
	inclua biblioteca Util

	funcao preencheMat(inteiro mat[][], inteiro size){ //Preencher a matriz
		inteiro aux  
		logico temValor = falso 
		para(inteiro i = 0; i < size; i++){
			para(inteiro j = 0; j < size; j++){
				aux = Util.sorteia(0, 3) //Gera um número aleatório para a coluna que receberá o numero random 
				se(j == aux e temValor == falso){
					mat[i][j] = Util.sorteia(1, 4)
					temValor = verificaMatriz(mat, size, Util.sorteia(1, 4),i,j) //Verifica se a posição random pode receber o numero aleatório
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
			se(i == size){
				escreva("↳ Linhas\n")
				pare
			} senao se(i % 2 == 0 e i != 0){
				escreva("-----------\n")
				escreva(i,"|")
			} senao{
				escreva(i,"|")
			}
			
					para(inteiro j = 0; j < size; j++){
						 se(j == size-1){
							escreva(" ",mat[i][j], "\n")
						} senao se(j % 2 != 0){ //Caso seja 2, coloca a | par separar os quadrantes
							escreva(" ",mat[i][j],"|")
						} senao se(j == 0){
							escreva(mat[i][j]," ")
						}senao{
							escreva(" ",mat[i][j]," ")
						}
						
					}
				}
	}

	funcao logico verificaMatriz(inteiro mat[][], inteiro size, inteiro num, inteiro linha, inteiro coluna){
		logico ehValido = falso
		inteiro matAux[2][2]
		para (inteiro i=0;i < size;i++){
            para (inteiro j=0;j < size; j++){
       		se (i == linha ou j == coluna){ 
       			se(mat[i][j] == num){ //Verifica se o numero passado por parametro já existe na linha e coluna da matriz
       				escreva("\nFalso -> Matriz [",i,"][",j,"] = ",mat[i][j])
       				retorne falso
       			}senao{
       				escreva("\n Verdadeiro -> Matriz [",i,"][",j,"] = ",mat[i][j])
       				ehValido = verdadeiro
       			}
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
			se((coluna >= 0 e coluna < 4) e (linha >= 0 e linha < 4)){
				ehValido = verdadeiro //verifica se a linha tem um valor dentro dos parâmetros válidos
			}		
			se(ehValido == falso){
				escreva("Valor inválido!\n")
			} senao {
				escreva("Informe o valor (1 até 4): ")
				leia(aux)
				se(aux >= 1 e aux <= 4){
					
					
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
		const inteiro sudokuEasySize = 4
		inteiro matSudoku[sudokuEasySize][sudokuEasySize], op, op2

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
					exibeMatriz(matSudoku, sudokuEasySize)

					escreva(" Deseja continuar inserindo?\n[0] Não\n[1] Sim\n")
					leia(op2)
					
				}enquanto(op2 != 0)
				
				pare
			caso 2:

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
 * @POSICAO-CURSOR = 2553; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */