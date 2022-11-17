#include 'protheus.ch'
#include 'parmtype.ch'

User Function RctString()
	
	Local nRand := Randomize(1,100)
	
		MsgInfo(I18N("O número retornado é: #1[numero]#.", {nRand}))
	
			//geito "errado"
		MsgAlert("O numero retornado é: "+ CValToChar(nRand))
	
	
Return