#include 'protheus.ch'
#include 'parmtype.ch'

User Function RctDialog()
	Local oDlg  := Nil
	Local oSay  := Nil
 
		Define Dialog oDlg Title "Comandos X Construtor" From 0,0 To 300,300 Pixel
		
		// Versão utilizando o construtor
		oSay:= TSay():New(      05,   05,          {||"Utilizando Construtor"},    oDlg, , , , ,;
                                        ,.T., CLR_RED,    CLR_WHITE,                   200,  20)
		
	// Versão utilizando o comando
	//	@15,05 Say oSay Prompt "Utilizando comandos" Of oDlg Pixel Colors CLR_BLUE,CLR_WHITE Size 200,20
 
		Activate Dialog oDlg Centered
	
Return