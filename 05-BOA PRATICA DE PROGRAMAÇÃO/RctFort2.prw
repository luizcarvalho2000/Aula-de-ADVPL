#include 'protheus.ch'
#include 'parmtype.ch'

// Quando o Array é utilizado para representar um mapeamento de chave e valor, e claro, possua um tamanho definido
	
	#DEFINE INFO1 1
	#DEFINE INFO2 2
	#DEFINE INFO3 3
	
User Function RctFort2()

	Local aArray := {"A","B","C"}
	
	Alert("Informação 1: " + CValToChar(aArray[INFO1]))
	Alert("Informação 2: " + CValToChar(aArray[INFO2]))
	Alert("Informação 3: " + CValToChar(aArray[INFO3]))
	
	//Outra coisa importante! toda vez que for referenciar dados de um Array
	// sempre verificar se realmente existem dados dentro deste array:
	If Len(aArray) > 0
      cRet := aArray[1]
    EndIf
	
	
Return