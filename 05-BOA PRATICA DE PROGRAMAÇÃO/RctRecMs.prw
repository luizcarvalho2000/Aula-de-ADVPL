#include 'protheus.ch'
#include 'parmtype.ch'


User Function RctRecMs()
	Local aArea := SB1->(GetArea())
	
		DbSelectArea('SB1')
		Sb1->(DbSetOrder(1))
		Sb1->(DbGoTop())
	
	// No Protheus o controle de transação é iniciado pelo Begin Trensaction e finalizado pelo End Transection
	Begin Transaction
	
		MsgInfo("A descrição do produto será alterada!", "Atenção")
		
			If SB1->(DbSeek(FWxFilial('SB1') + '000002'))
				RecLock('SB1', .F.) //Trava registro para alteração
				Replace B1_DESC With "MONITOR DELL 42 PL"
	
					SB1->(MsUnlock())
			EndIf
				MsgAlert("Alteração efetuada!", "Atenção") 

	End Transaction
		RestArea(aArea)
Return
