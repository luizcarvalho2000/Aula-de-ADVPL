#include 'protheus.ch'
#include 'parmtype.ch'
// quebra de linhas e espaços em braco

User Function RctLinha()
	
	Local cCpf		:= ""
	Local cEmail	:= ""
	Local cEnd		:= ""
	Local cNome		:= ""
	Local cTel		:= ""
	Public nvalor	:= 0
	
		If !Empty(cNome) .And. !Empty(cEnd) .And. !Empty(cTel) .And. !Empty(cCpf).And. nValor !=0     
			GravaDados(cNome,cEnd,cTel,cCpf,cEmail) 
		Endif
	
	// O código acima pode ser reescrito desta forma, e também utilizar espaços em branco.
	
	If  !Empty(cNome) .And. !Empty(cEnd) .And. !Empty(cTel) .And.;  
		!Empty(cCpf)  .And. nValor != 0 
 
			GravaDados(cNome,cEnd,cTel,cCpf,cEmail) 
 
	Endif
	
Return