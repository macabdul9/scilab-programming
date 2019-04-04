//Program to find mean, standard deviation and first r moments about mean of
//given grouped data
clc;
n=input('Enter the number of observations:');
disp('Enter the values of xi==>');
for i=1:n
    x(i)=input('\');
end;
disp('Enter thecorresponding frequencies fi==>');
sum3=0;
for i=1:n
    f(i)=input('\');
    sum3=sum3+f(i);
end;
r=input('Enter the number of moments to be caculated:');
sum1=0;
for i=1:n
    sum1=sum1+f(i)*x(i);
end;
A=sum1/sum3;      //calculation of mean
printf('Mean=%f\n',A);
for j=1:r
    sum2=0;
    for i=1:n
        y(i)=f(i)*(x(i)-A)^j;
        sum2=sum2+y(i);
    end;
    M(j)=(sum2/sum3);       //calculation of moments
printf('Moment about mean M(%d)=%f\n',j,M(j));
end;
sd=sqrt(M(2));        //calculation of standard deviation
printf('Standard deviation:%f\n',sd);
