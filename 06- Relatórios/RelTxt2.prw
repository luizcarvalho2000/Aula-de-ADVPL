#Include 'Protheus.ch'
#Include 'Parmtype.ch'


User Function RelTxt()

If MsgYesNo ("Esta fun��o tem como objetivo gerar arquivo TXT")
	
	Processa ({||MntQry () },,"Processando...")
	MsAguarde ({ || GeraArq ()},,"O arquivo TXT est� sendo gerado...")
	
Else
	Alert ("Cancelada pelo Operador")

EndIf

Return Nil

/** Montar a query **/

Static Function MntQry()

	Local cQuery := ""
	
	cQuery := " SELECT B1_FILIAL AS FILIAL, B1_COD AS CODIGO,  "
	cQuery += " B1_DESC AS DESCRICAO "
	cQuery += " FROM SB1990 WHERE D_E_L_E_T_ = ''"
	
	cQuery := ChangeQuery (cQuery)
		DbUseArea (.T.,"TOPCONN", TCGENQRY (,,cQuery), 'TMP',.F.,.T.)

Return Nil

/** Fun��o que gera o arquivo TXT **/
Static Function GeraArq()

Local cDir := "C:\TOTVS12127\Protheus\protheus_data\treport\"
Local cArq := "arquivo2.txt"
Local nHandle := FCreate(cDir+cArq)

	If nHandle < 0 
		MsgAlert ("Erro ao criar o arquivo", "ERRO")
		
	Else
		While TMP->(!EOF ())
		
		FWrite (nHandle, TMP->(FILIAL)+ " | " + TMP->(CODIGO) + " | " + TMP->(DESCRICAO) + CRLF)
		TMP->(dbSkip ())
		
		EndDo
	
	/*
		For nLinha := 1 to 200
			FWrite(nHandle,"Gravando a linha " + StrZero(nLinha,3)+ CRLF)
		Next nLinha
		//
		**/
		FClose (nHandle)
	
	EndIf

	If FILE ("C:\TOTVS12127\Protheus\protheus_data\treport\Teste_arquivo.txt")
		MsgInfo ("Arquivo criado com sucesso!")
	Else
		MsgAlert ("N�o foi possivel criar o arquivo", "ALERTA")
	EndIf
	
Return
