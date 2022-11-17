#include 'protheus.ch'
#include 'parmtype.ch'
// EXEMPLO DE USO HETEROGENEA

User Function RctHeter()
	
	local nidade	:= 18
	local dnasc		:= ctod("01/01/1963")
	local cnome		:= ""
	local avalid	:= {}
	
		if !empty(cnome) .and nidade >= 18
			aadd(avalid, "Permitido.")
		endif
	
	//Corrigido usando capitulação heterogenea
	
	Local nIdade	:= 18
	Local dNasc		:= CToD("01/01/1963")
	Local cNome		:= ""
	Local aValid	:= {}
	
		If !Empty(cNome) .And. nIdade >= 18
			AAdd(aValid, "Permitido.")
		Endif
	
Return