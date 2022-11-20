programa
{
	inclua biblioteca Util


	


	funcao preencheMat(inteiro mat[][], inteiro size){
		inteiro aux, temValor = 0
		para(inteiro i = 0; i < size; i++){
			para(inteiro j = 0; j < size; j++){
				aux = Util.sorteia(1, 4)
				se(j == aux e temValor == 0){
					mat[i][j] = Util.sorteia(1, 4)
					temValor = 1
				} 
				
			}
		}
	}
	
	funcao exibeMatriz(inteiro mat[][], inteiro size){
		escreva("X")
		
		para(inteiro j = 0; j < size; j++){
				escreva("[",j,"]")
				se(j == size-1){
					escreva(" → Colunas \n")
				} 
			}
		para(inteiro i = 0; i <= size; i++){
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
						} senao se(j % 2 != 0){
							escreva(" ",mat[i][j],"|")
						} senao se(j == 0){
							escreva(mat[i][j]," ")
						}senao{
							escreva(" ",mat[i][j]," ")
						}
						
					}
				}
	}

	funcao logico verificaMatriz(inteiro mat[][], inteiro size){
		inteiro num[4]
		para (inteiro i=0;i < size;i++){
            para (inteiro j=0;j < size; j++){
       		
            	
            }
		}
		retorne falso
	}

	funcao inserirValor(inteiro mat[][], inteiro size){
		inteiro linha = 0, coluna = 0, aux
		logico ehValido = falso
		faca{
			escreva("Informe a linha: ")
			leia(linha)					
			escreva("Informe a coluna: ")
			leia(coluna)
			se((coluna > 0 e coluna <= 4) e (linha > 0 e linha <= 4)){
				ehValido = verdadeiro
			}		
			se(ehValido == falso){
				escreva("Valor inválido!\n")
			} senao {
				escreva("Informe o valor (1 até 4): ")
				leia(aux)
				se(aux > 1 e aux <= 4){
					mat[linha][coluna] = aux
					escreva(size)
					ehValido = verificaMatriz(mat, size)
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
 * @POSICAO-CURSOR = 2652; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */