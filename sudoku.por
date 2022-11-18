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
				} senao {
					mat[i][j] = 0
				}
				
			}
		}
	}
	
	funcao exibeMatriz(inteiro mat[][], inteiro size){
		para(inteiro i = 0; i < size; i++){
			se(i % 2 == 0 e i != 0){
				escreva("-----------\n")
			}
					para(inteiro j = 0; j < size; j++){
						se(j == size-1){
							escreva(mat[i][j],"\n")
						} senao se(j % 2 != 0){
							escreva(mat[i][j],"|")
						} senao {
							escreva(mat[i][j])
						}
						
					}
				}
	}
	
	funcao inicio()
	{
		const inteiro sudokuEasySize = 4
		inteiro matSudoku[sudokuEasySize][sudokuEasySize], op

		escreva("=-=-=-=-=-=--=-=-=-=-=-=-= Sudoku Game =-=-=-=-=-=--=-=-=-=-=-=-=\n")
		escreva("Escolha o modo de jogo\n[1] Facil\n[2] Dificil\n[0] Sair\n")
		leia(op)

		escolha(op){
			caso 1:
				preencheMat(matSudoku, sudokuEasySize)
				exibeMatriz(matSudoku, sudokuEasySize)
				
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
 * @POSICAO-CURSOR = 354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */