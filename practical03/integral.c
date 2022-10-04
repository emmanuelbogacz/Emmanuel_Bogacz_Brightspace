#include <stdio.h>
#include <math.h>

int main(void){
    int a,N,i; //initialisation
    a=0;
    N=13;

    float sum,b;
    b=M_PI/3;
    sum=0;

    sum=tan(a)+tan(b); //endpoints

    for(i=1;i<N;i++){
    sum=sum + 2*tan(a+ i*(b-a)/(N-1)); //the argument of tan is each equidistant point, i is the parameter
     printf("%f\n",sum);
    }

    sum=(b-a)*sum/(2*N); //prefactors

    printf("Calucated integral = %f \n", sum);
    printf("Exact solution = %f \n", log(2));
    printf("Difference = %f \n", fabs(sum-log(2)) ); //fabs is the math.h absolute value
    
    
return(0);
}
