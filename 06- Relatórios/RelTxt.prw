#INCLUDE 'Protheus.ch'
#INCLUDE 'Parmtype.ch'


User Function RelTxt()

If MsgYesNo ("Esta Função tem como objetivo gerar um arquivo TXT")
     
    Processa ({|| MntQry () },, "Processando...")
    MsgAguarde ({  || Geraarq () },, "O arquivo TXT está sendo gerado...")

Else
    Alert("Cancelada pelo Operador")

EndIf


Return Nil

Static Function MntQry ()

    Local cQuery := ""

    cQuery := " SELECT B1_FILIAL AS FILIAL, B1_COD AS CODIGO, "
    cQuery += " B1_DESC AS DESCRICAO "
    cQuery += " FROM SB1990 WHERE D_E_L_E_T_ = '' "

    cQuery := ChangeQuery (cQuery)
        DbUseArea (.T.,"TOPCONN", TCGENQRY (,,cQuery), 'TMP',.F.,.T.)


/*/Função que gera o arquivo TXT/*/

Static Function GeraArq()

Local cDir := "C:\TOTVS12133\Protheus\protheus_data\treport\"
Local cArq := "arquivo2.txt"
Local nHandle := FCreate (cDir + cArq)
/*local nLinha := {}*/




    If nHandle < 0
        MsgAlert ("Erro ao criar o arquivo", "ERRO")
    
    Else
        While TMP->(!EOF())

        FWrite (nHandle, TMP-> (FILIAL)+ " | " + TMP->(CODIGO) + " | " + TMP->(DESCRICAO) + CRLF)
        TMP->(dbSkip ())

        EndDo 


      /*  
        For nLinha := 1 to 200
            FWrite (nHandle,"Gravando a linha" + StrZero (nLinha, 3) + CRLF)

        Next nLinha **/

        FClose (nHandle)
    
    EndIf

    If FILE ("C:\TOTVS12133\Protheus\protheus_data\treport\arquivo2.txt")
        MsgInfo ("Arquivo criado com sucesso!")
    
    Else 
        MsgAlert ("Não foi possivel criar esse arquivo", "ALERTA")
    
    EndIf

    
    
Return
