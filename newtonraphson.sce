//Newton-Raphson Method
clc;
clear;
close;
deff('x=f(x)','x=cos(x)-x*exp(x)')
deff('x=f1(x)','x=-sin(x)-(x+1)*exp(x)')
x0=0.5;
e=0.00001;
printf('\nf(x)=cos(x)-x*exp(x)')
printf('\nf1(x)=-sin(x)-(x+1)*exp(x)\n')
printf(' n\t xn\t\t f(xn)\t\t f1(xn)\t\t xn+1\t\t Error\n\n')
for i=1:6
x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
printf(' %i\t%f\t%f\t%f\t%f\t%f\n',i-1,x0,f(x0),f1(x0),x1,e1)
x0=x1;
if(e1<e)
break;
end
end
printf( '\nThe solution of f(x) after %i iterations is %f',i,x1)
