#include 'protheus.ch'
#include 'parmtype.ch'


user function AVETOR()
	// Arrays: S�O COLE��ES DE VALORES, SEMELHANTES A UMA LISTA
	//CADA ITEM EM UM ARRAY � REFERENCIADO PELA INDICA��O DE SUA POSICAO NUMERICA, INICIANDO PELO NUMERO 1.../totvs/bin/smartclient/smartclient.exe
	Local dData := Date()
	Local aValores := {"Jo�o",dData,100}
	
	Alert(aValores[2]) //Exibe a posicao 2 do array 
	Alert(aValores[3])
	
return
