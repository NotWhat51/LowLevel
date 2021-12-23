#include <stdio.h>
#include "selection.h"

#define size 10
int main(void) {
	int array[size];
	for (int i = 0; i < size; i++)
		scanf("%i", array[i]);
	
	selection(array, size);
	
	for (int i = 0; i < size; i++)
		printf("%i ", &array[i]);
	return 0;
}
