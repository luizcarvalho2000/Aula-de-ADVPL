#include 'protheus.ch'
#include 'parmtype.ch'
/*/
Exemplo de janela de erro amigável com o usuário.
/*/
User Function RctError()
	Local cError      := ""
	Local oLastError := ErrorBlock({|e| cError := e:Description + e:ErrorStack})
	Local uSoma        := Nil
      
		uSoma := "A" + 1
      
			ErrorBlock(oLastError)
      
			// Anota o erro no console.
//ConOut(cError)
 	
 	Aviso("Mensagem de erro: ", cValToChar(cError))
 	
Return
