//Program to find value of integral using Simpson's one third rule
clc;
clear;
close;
deff('y=f(x)','y=1 + sin(x)')
x0=0;
xn=%pi;
n=10;         //n should be even
h=(xn-x0)/n;
s=0;
for i=1:2:n
    s=s+f(x0+(i-1)*h)+4*f(x0+i*h)+f(x0+(i+1)*h);
end
integral=(h*s)/3;
printf('\nThe value of integral is=%g\n',integral)
