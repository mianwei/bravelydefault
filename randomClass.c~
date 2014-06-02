/*This program was written by Mian Wei
It allows one to randomly assign two jobs to each character in Bravely default.
It also allows one to assign support skills randomly to each character as well.
In order to run it, place randomClass.c, makefile, class.txt, support.txt in the same folder.
Compile using make
Then run ./randomClass [optional number]
Optional number determines the number of allowed support skill slots.
*/
  
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>
#define NUMCLASS 24
#define NUMSUPPORT 164
#define MAXSUPPORT 5
FILE *fr, *supportFile; 
int ran();
int ran1(int a);

int main(int argc, char *argv[])
{
	int supportNum = 0;
	int run, run2;
	if (argc > 1)	{
		supportNum = atoi(argv[1]);
		if (supportNum > 5) {
			supportNum = 5;
		}
		else if (supportNum < 0) {
			supportNum = 0;
		}
	}
	
	char support[NUMSUPPORT+1][80];
	int supportSize[NUMSUPPORT];
	int numSupport[MAXSUPPORT];
	char a[NUMCLASS][80];
	
	char line[80];
	int counter;
	int repeated = 0;
	int current,generated;
	int slotsAvailable = supportNum;  
	srand (time(NULL));
	
	fr = fopen ("class.txt", "rt");
 	counter = 0;
	while(fgets(line, 80, fr) != NULL)
  {
	/* get a line, up to 80 chars from fr.  done if NULL */
		strcpy(a[counter+1],line);
		
		counter++;
  }

  fclose(fr);  /* close the file prior to exiting the routine */

	supportFile = fopen ("support.txt", "rt");
	counter = 0;

	while(fgets(line, 80, supportFile) != NULL)
  {
		strcpy(support[counter],line);
		fgets(line, 80, supportFile);
		fgets(line, 80, supportFile);
		supportSize[counter] = atoi(line);
		fgets(line, 80, supportFile);
		
		counter++;
  }
	
	printf ("Agnes\n");
	current = ran(NUMCLASS);
	generated = ran(NUMCLASS);
	while (current == generated) {
		generated = ran(NUMCLASS);
	}
	
	slotsAvailable = supportNum;
	run = 0;
	while (slotsAvailable > 0) {
		while (repeated == 0) {
			numSupport[run] = ran1(NUMSUPPORT);
			if (slotsAvailable - supportSize[numSupport[run]] < 0) {
				continue;
			}
			repeated = 1;
			for (run2 = 0; run2 < run; run2++) {
				if (numSupport[run] == numSupport[run2]) {
					repeated = 0;
				}
			}
		}
		repeated = 0;
		slotsAvailable = slotsAvailable - supportSize[numSupport[run]];
		run ++;
	}
	printf("first class: %ssecond class: %s\n", a[current+1],a[generated+1]);
	for (run2 = 0; run2 < run;run2++){
		printf("Support %d: %s\n", run2 + 1, support[numSupport[run2]]);
		
	}

	printf ("Tiz\n");
	current = ran(NUMCLASS);
	generated = ran(NUMCLASS);
	while (current == generated) {
		generated = ran(NUMCLASS);
	}
	slotsAvailable = supportNum;
	run = 0;
	while (slotsAvailable > 0) {
		while (repeated == 0) {
			numSupport[run] = ran1(NUMSUPPORT);
			if (slotsAvailable - supportSize[numSupport[run]] < 0) {
				continue;
			}
			repeated = 1;
			for (run2 = 0; run2 < run; run2++) {
				if (numSupport[run] == numSupport[run2]) {
					repeated = 0;
				}
			}
		}
		repeated = 0;
		slotsAvailable = slotsAvailable - supportSize[numSupport[run]];
		run ++;
	}
	printf("first class: %ssecond class: %s\n", a[current+1],a[generated+1]);
	for (run2 = 0; run2 < run;run2++){
		printf("Support %d: %s\n", run2 + 1, support[numSupport[run2]]);
		
	}



	printf ("Ringabel\n");
current = ran(NUMCLASS);
	generated = ran(NUMCLASS);
	while (current == generated) {
		generated = ran(NUMCLASS);
	}
	slotsAvailable = supportNum;
	run = 0;
	while (slotsAvailable > 0) {
		while (repeated == 0) {
			numSupport[run] = ran1(NUMSUPPORT);
			if (slotsAvailable - supportSize[numSupport[run]] < 0) {
				continue;
			}
			repeated = 1;
			for (run2 = 0; run2 < run; run2++) {
				if (numSupport[run] == numSupport[run2]) {
					repeated = 0;
				}
			}
		}
		repeated = 0;
		slotsAvailable = slotsAvailable - supportSize[numSupport[run]];
		run ++;
	}
	printf("first class: %ssecond class: %s\n", a[current+1],a[generated+1]);
	for (run2 = 0; run2 < run;run2++){
		printf("Support %d: %s\n", run2 + 1, support[numSupport[run2]]);
		
	}


	printf ("Edea\n");
	current = ran(NUMCLASS);
	generated = ran(NUMCLASS);
	while (current == generated) {
		generated = ran(NUMCLASS);
	}
	slotsAvailable = supportNum;
	run = 0;
	while (slotsAvailable > 0) {
		while (repeated == 0) {
			numSupport[run] = ran1(NUMSUPPORT);
			if (slotsAvailable - supportSize[numSupport[run]] < 0) {
				continue;
			}
			repeated = 1;
			for (run2 = 0; run2 < run; run2++) {
				if (numSupport[run] == numSupport[run2]) {
					repeated = 0;
				}
			}
		}
		repeated = 0;
		slotsAvailable = slotsAvailable - supportSize[numSupport[run]];
		run ++;
	}
	printf("first class: %ssecond class: %s\n", a[current+1],a[generated+1]);
	for (run2 = 0; run2 < run;run2++){
		printf("Support %d: %s\n", run2 + 1, support[numSupport[run2]]);
		
	}


	return 0;

}

int ran() {
	return  rand() % NUMCLASS; 
}

int ran1(int a) {
	return  rand() % a; 
}
 

