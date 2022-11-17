#include 'protheus.ch'
#include 'parmtype.ch'

User Function RctEmbed()

	BeginSQL Alias TEMPSE2
		
		SELECT E2_PREFIXO PREFIXO, E2_NUM NUMERO
			FROM %Table:SE2%
			WHERE E2_FILIAL = %xFilial:SE2% AND
				  E2_EMISSAO >= %Exp:MV_PAR01% AND
				  E2_EMISSAO <= %Exp:MV_PAR02% AND 
				  %NotDel%
				 
	EndSql 
	
Return