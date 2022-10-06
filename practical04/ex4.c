#include <stdio.h>
#include <math.h>

#define N 1300

float degtorad(float arg);
float trapint(int npoints); //trapezoidal integral

float y[N];
float x[N];

int main(void){

    int i;
    //N=sizeof(y)/sizeof(int); //is the length of the y array as size of int is 4 bytes

    for(i=0;i<N;i++){ //initialisation of x in degrees

        x[i]=(60./(N-1))*i;
    }

    for(i=0;i<N;i++){ //conversion of x to radians

        x[i]=degtorad(x[i]);
    }
printf("%f\n",x[N-1]);
    for(i=0;i<N;i++){ //computation of tan

        y[i]=tan(x[i]);
    }

    float integral;
    integral=trapint(N);

    printf("Calucated integral = %f \n", integral);
    printf("Exact solution = %f \n", log(2));
    printf("Difference = %f \n", fabs(integral-log(2)) ); //fabs is the math.h absolute value


return(0);
}


float degtorad(float arg){ //conversion to radians

    return((M_PI*arg)/180.0);
}


float trapint(int npoints){

    float sum;
    int i;
    sum=0;

    sum=y[0]+y[npoints-1]; //endpoints

    for(i=1;i<npoints-1;i++){
    sum = sum + 2*y[i]; //the argument of tan is each equidistant point
    //printf("%f\n",sum);
    }

    sum=(x[npoints-1]-x[0])*sum/(2*npoints); //prefactors

return(sum);
}
