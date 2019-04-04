//Program to find value of integral using Simpson's three eighth rule
clc;
clear;
close;
deff('y=f(x)','y=1/(1+x^3)')
x0=0;
xn=6;
n=6;     //n should be a multiple of three
h=(xn-x0)/n;
s=0;
for i=1:3:n
    s=s+f(x0+(i-1)*h)+3*f(x0+i*h)+3*f(x0+(i+1)*h)+f(x0+(i+2)*h);
end
integral=(3*h*s)/8;
printf('\nThe value of integral is=%g\n',integral)
