//Program to solve the equation y'=f(x,y); y(x0)=0 for y(xn) using Euler's
//method
clc;
clear;
close;
deff('z=f(x,y)','z=(y-x)/(y+x)')
x0=0;
y0=1;
xn=0.1;
h=0.02;
x=x0;
y=y0;
while x~=xn
    y=y+h*f(x,y);
    x=x+h;
printf('\nWhen x=%g,y=%g\n',x,y);
end
