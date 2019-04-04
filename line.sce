//Program of straight line fitting for n given pairs of values
clc;
clear;
close;
n=input('Enter the number of pairs of input(x,y):');
s1=0;
s2=0;
s3=0;
s4=0;
disp('Enter the values of x:')
for i=1:n
x(i)=input('\');
    s1=s1+x(i);
    s2=s2+x(i)*x(i);
end
disp('Enter coressponding values of y:')
for i=1:n
y(i)=input('\');
    s3=s3+y(i);
end
for i=1:n
    s4=s4+x(i)*y(i);
end
m=(s1*s3-n*s4)/(s1*s1-n*s2);
c=(s1*s4-s2*s3)/(s1*s1-n*s2);
printf('The fitted line is y=%gx+(%g)',m,c)
