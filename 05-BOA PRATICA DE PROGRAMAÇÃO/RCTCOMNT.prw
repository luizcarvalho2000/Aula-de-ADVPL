#include 'protheus.ch'
#include 'parmtype.ch'


User Function RCTCOMNT()
	Local lLogico := .T.
	
	//exemplo de comentário simples
	If lLogico
		MsgInfo("Verdadeiro!") //Linha de código que faz alguma coisa
	Else
		MsgInfo("Falso!")	//Linha de código que faz alguma coisa
	EndIf
	
	//exemplo de comentário em múltiplas linhas
	
	//-----------------------------------------
	// Faz algo mais complexo que necessita
	// de uma explicação em multiplas linhas
	//-----------------------------------------
	
	If lLogico
	
	EndIf
	
Return
