#INCLUDE 'TOTVS.CH'

User Function RCTQUERY()
	Local cQuery := ""
	Local lDelet := .T.
	
	cQuery :=   "SELECT B1_COD,B1_DESC,B1_TIPO,R_E_C_N_O_ "                   +;
                "     FROM " + RetSQLName("SB1")                      +;
                "     WHERE B1_FILIAL ='" + XFilial("SB1") + "' AND " +;
                "           B1_TIPO = 'PA' AND "                      +;
                "           D_E_L_E_T_=''"                            +;
                "     ORDER BY B1_MSBLQL"

   Aviso("Retorno", CValToChar(cQuery))
   
   // Exemplo de query com condicional
   
   cQuery :=   "SELECT B1_COD,B1_DESC,B1_TIPO,R_E_C_N_O_ "                   +;
                "     FROM " + RetSQLName("SB1")                      +;
                "     WHERE B1_FILIAL ='" + XFilial("SB1") + "' AND " +;
                "           B1_TIPO = 'PA' AND "                      +
                
    If lDelet
                
   		 cQuery += "	D_E_L_E_T='' "
                
    EndIf
   
      cQuery += " ORDER BY B1_MSBLQL"
               
                
               
	
Return