//Bisection Method
clc;
clear;
close;
deff('y=f(x)','y=x^3-4*x-9')
x1=2;
x2=3;
e=0.001;
i=0;
printf('f(x)=x^3-4*x-9\n')
printf('Iteration\tx1\t\tx2\t\tz\t\tf(z)\n')
while abs(x1-x2)>2*e
    z=(x1+x2)/2
printf(' %i\t\t%f\t%f\t%f\t%f\n',i,x1,x2,z,f(z))
if f(z)*f(x1)>0
x1=z
else
x2=z
end
    i=i+1
end
printf('\n\nThe solution of f(x) is %g after %i iterations',z,i-1)
