#include <stdio.h>
#include "asm.h"

short currentTemperature;
short desiredTemperature;

int main(void){
 	
 	int timeElapsed;
	
	currentTemperature=25;
	desiredTemperature=22;
	timeElapsed=timeForTemperatureChange();

	printf("%s", "Current temperature is ");
	printf("%d\n", currentTemperature);
	printf("%s", "Desired temperature is ");
	printf("%d\n", desiredTemperature);
	printf("%s", "Time elapsed for change is ");
	printf("%d\n", timeElapsed);

	currentTemperature=18;
	desiredTemperature=22;
	timeElapsed=timeForTemperatureChange();

	printf("%s", "Current temperature is ");
	printf("%d\n", currentTemperature);
	printf("%s", "Desired temperature is ");
	printf("%d\n", desiredTemperature);
	printf("%s", "Time elapsed for change is ");
	printf("%d\n", timeElapsed);

	currentTemperature=22;
	desiredTemperature=22;
	timeElapsed=timeForTemperatureChange();

	printf("%s", "Current temperature is ");
	printf("%d\n", currentTemperature);
	printf("%s", "Desired temperature is ");
	printf("%d\n", desiredTemperature);
	printf("%s", "Time elapsed for change is ");
	printf("%d\n", timeElapsed);



 	return 0;
}