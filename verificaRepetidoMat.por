programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro mat[2][2], aux
		logico ehRepetida = falso

		para(inteiro i=0; i < 2; i++){
			para(inteiro j=0; j < 2; j++){
				aux = Util.sorteia(0, 99)
				para(inteiro k=0; k < 2; k++){
					para(inteiro l=0; l < 2; l++){
						se(mat[k][l] == aux){
							ehRepetida = verdadeiro
						}
					}
				}
				se(ehRepetida){
					j--
				} senao {
					mat[i][j] = aux
				}
			}
		}

		para(inteiro i=0; i < 2; i++){
			para(inteiro k=0; k < 2; k++){
					escreva("\n mat",mat[i][k])
				}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 178; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */