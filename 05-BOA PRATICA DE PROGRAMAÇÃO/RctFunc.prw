#include 'protheus.ch'
#include 'parmtype.ch'

User Function RctFunc(cParam1, cParam2, cParam3)
// como declarar e utilizar funções no ADVPL.
Return

User Function RctFuncA(cParam1, cParam2, cParam3, cParam4, cParam5, cParam6, cParam7, cParam8,;
						cParam9, 	cParam10, 		cParam11, 		cParam12, 		cParam13	)

//exemplo de chamda de função 
	RctFunc(cParam1, cParam2, cParam3)

// Para funções genéricas, nomeia-se de acordo com sua aplicabilidade.
User Function SaldoTit()

				
Return

// Outra coisa bacana é que, toda função que tenha passagem por parâmetros, carregue um valor padrão, ou default.
//Assim, mesmo que ela seja chamada sem a passagem por parâmetro, não vai ocorrer erro: Segue exemplo abaixo;

// chamada de exemplo
Function Exemplo()
       DefaultFunc()
Return
 
Static Function DefaultFunc( nNewPar )
       Local nRet                := 0
       Default nNewPar   := 10
      
       // Uso o nNewPar sem problema.
       nRet := 10 * nNewPar
Return nRet