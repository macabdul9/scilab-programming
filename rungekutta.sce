//Program to solve the equation y'=f(x,y);y(x0)=y0 for y(xn) using Runge-Kutta
//method of fourth order
clc;
clear;
close;
deff('z=f(x,y)','z=x*x*x-y + 2')
x0=0;
y0=1;
xn=0.2;
h=0.1;
x=x0;
y=y0;
while x~=xn
    k1=h*f(x,y);
    k2=h*f(x+h/2,y+k1/2);
    k3=h*f(x+h/2,y+k2/2);
    k4=h*f(x+h,y+k3);
    k=(k1+(k2+k3)*2+k4)/6;
    x=x+h;
    y=y+k;
printf('\nWhen x=%g,y=%g\n',x,y)
end
