#include 'protheus.ch'
#include 'parmtype.ch'

User Function RctForTp()
//primeiro exemplo: Arrays simples
	Local aArray1 := { "A", "B", "C" } //exemplo de array comum, com estrutura simples.
	
// Mas e se for necessário adicionar comentários para os dados deste array?
	Local aArray2 := { "A",; //Comentario A
						"B",; //Comentario B
						"C"} //Comentario C
					
// E se for criado um Array multidimensional?
	Local aMatriz1 := { {"A", 1}, { "B", 2}, {"C", 3} } //jeito errado?
// forma mais correta e facil de enteder:
	Local aMatris2 := { {"A", 1},;
	 					{"B", 2},;
	 					{"C",3}}

Return