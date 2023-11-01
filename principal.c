#include <stdio.h>
#include "funciones.h"

int main(){
	int a, b, op;
	
	printf( "\n1. Suma \n2. Resta \n3. Multiplicación \n4. División \n");
	scanf("%d", &op);
	
	printf( "Introduce el primer valor: ");
	scanf("%d", &a);
	printf("Introduce el segundo valor: ");
	scanf("%d", &b);
	
	if(op==1){
		
		printf("El resultado es: %d", sumar(a,b));
	}
	if(op==2){
		
		printf( "El resultado es: %d" ,restar(a,b));
	}
	if(op==3){
		
		printf("El resultado es: %d" ,multiplicar(a,b));
	}
	if(op==4){
		
		printf("El resultado es: %f" , dividir(a,b));
	}
	
	

	return 0;
}
