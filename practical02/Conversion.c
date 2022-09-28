#include <stdio.h>
#include <math.h>

int main(void) {

/* Declare variables */
   int i,inum,tmp,numdigits;
   float fnum;
   char binnum[60];

/* Intialise 4-byte integer */
   inum = 33554431;
/* Convert to 4-byte float */
   fnum = (float) inum;


/* Convert to binary number (string)*/
   i = 0; tmp = inum;
   while (tmp > 0) {
     sprintf(&binnum[i],"%1d",tmp%2);
     tmp = tmp/2;
     i++;
   }

/* Terminate the string */
   binnum[i] = '\0';
       

/* Complete the expression */
   i=0;
   numdigits=fnum;
   while(numdigits>0){
    numdigits=numdigits/10;
    i=i+1;
   }
   numdigits=i;

   printf("inum=%d,  fnum=%f, inum in binary=%s\n",
      inum,fnum,binnum);
   printf("The number of digits is %d\n",numdigits);
}
