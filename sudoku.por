programa
{
	inclua biblioteca Util

	funcao verificarInsercaoMatUsuario ()
	{
		inteiro quadra1[3][3], num=0, vet[3]
		//num --> variável que representa o número inicial do quadrante
		//quadra --> definição para o quadrante
		para (inteiro i=0;i<3;i++){
			escreva ("Número da linha do cubo: ", i+1, "\n")
			para (inteiro j=0; j<3; j++){
				escreva ("Por favor informe o número: ")
				leia (quadra1[i][j])
				//instrução de repetição para armazenar os números dentro dos quadrantes
				
					se (quadra1[i][j] >= num){
						vet[j] = quadra1[i][j]
					}senao se (quadra1[i][j] == quadra1[i][j-1]) {
						escreva ("O número inserido já foi escrito anteriormente, informe outro!")
						j--
						//instrução para verificar se o número já não foi inserido antes
					}
			}
		}
	}


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
 * @POSICAO-CURSOR = 72; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */