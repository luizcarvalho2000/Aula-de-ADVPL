#include 'protheus.ch'
#include 'parmtype.ch'


user function BLOCO()
	
//Local bBloco := {|| Alert("Ol� Mundo!")}
	//Eval(bBloco)
	
	// Passagem por par�metros - Bloco de c�digos
	Local bBloco := {|cMsg| Alert(cMsg)}
		Eval(bBloco,"Ol� Mundo!")
	
return
