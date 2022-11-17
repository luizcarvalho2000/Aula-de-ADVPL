#include 'protheus.ch'
#include 'parmtype.ch'

#DEFINE NUMERO 3.893

User Function RctHomo()
	
	Local cCampo1	:= M->B1_COD
	Local ccampo2	:= SB1->B1_COD
	Local cQuery   := ""
	
	cQuery := "SELECT B1_COD, B1_DESC FROM " + RetSQLName("SB1")
	
Return