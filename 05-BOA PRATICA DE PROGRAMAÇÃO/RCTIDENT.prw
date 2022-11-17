#include 'protheus.ch'
#include 'parmtype.ch'

User Function RctIdent()
	Local cNome 	:= ""
	Local nIdade 	:= 18
	
	If Empty(cNome)
		MsgInfo("A variável <b>cNome</b> está vazia.")
		If nIdade >= 18
			MsgInfo("Maior de idade.")
		EndIf
	EndIf
	
Return