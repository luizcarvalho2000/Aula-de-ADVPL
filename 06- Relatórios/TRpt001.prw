#INCLUDE 'Protheus.ch'
#INCLUDE 'TopConn.ch'

User Function TRpt001()

    Local oReport
    Local cAlias := getNextAlias ()

    OReport := RptStruc (cAlias)

    OReport : printDialog ()


Return

Static Function RPrint (oReport,cAlias)

    Local oSecao1 := oReport: Section (1)

    oSecao: BeginQuery ()

        BeginSQL Alias cAlias 

            SELECT
            B1_FILIAL FILIAL, B1_COD CODIGO, B1_DESC DESCRICAO, B1_TIPO TIPO, B1_ATIVO ATIVO
                FROM %TABLE: SB1% SB1
                    WHERE B1_FILIAL = '01' AND B1_MSBLQL <> '1' AND D_E_L_E_T_ = ''
                GROUP BY B1_FILIAL, B1_COD,B1_DESC,B1_TIPO,B1_ATIVO

        EndSQL 

   oSecao1: EndQuery ()  
   oReport: SetMeter ((cAlias)-> (RecCount ())) 

   oSecao1: Print ()  

Return 

Static Function RptStrutc (cAlias)

Local cTitulo := "Produto ativo"
Local cHelp := "Permite imprimir relatorio de produtos"
Local oReport
Local oSection1

//Instanciando a classe TReport:

oReport := TReport () :New ('TRPT001', cTitulo/**/,{| oReport| RPrint (oReport, cAlias)}, cHelp)

//Seção

oSection1 := TRSection () :New (oReport, "Produtos", {SB1})

TRCell () :New (oSection1, "FILIAL","SB1","Filial")
TRCell () :New (oSection1, "CODIGO","SB1","Codigo")
TRCell () :New (oSection1, "DESCRICAO","SB1","Descricao")
TRCell () :New (oSection1, "TIPO","SB1","Tipo")
TRCell () :New (oSection1, "ATIVO","SB1","Ativo")
    
Return (oReport)
                