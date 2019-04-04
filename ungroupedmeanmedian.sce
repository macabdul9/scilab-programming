//Scilab Code to find mean, mode, median, moments, skewness and kurtosis
clc
n=input('Enter the no. of observations:');
disp('Enter the values of Ai');
for i=1:n
    A(i)=input('\');
end;

B=gsort(A);
n = length(B);
meanA = sum(B)/n;
if pmodulo(n,2)==0
    medianA =((B(n/2)+B(n/2 +1)))/2;
else 
    medianA = B((n+1)/2);
end
C = diff(B)
//C= diff(B) calculates differences between adjacent elements of B along the first
// array dimension whose size exceeds 1:
//If B is a vector of length n, then C = diff(B) returns a vector of length n-1.
// The elements of C are the differences between adjacent elements of B.
//C = [B(2)-B(1)
// B(3)-B(2)....... B(m)-B(m-1)]
D = find(C)
//D = find(C) finds the idices(positions), where value is non zero
E = diff(D)
[m k] = max(E) // maximum ’m’ at k th position
modeA = B(D(k)+1)
printf('Mean of the given data is : %f \n \n', meanA);
printf('Median of the given data is : %f \n \n', medianA);
printf('Mode of the given data is : %f \n \n', modeA);
printf('First moment about the mean(M1)= %f \n \n', 0);
for i=1:n
    X(i)=A(i)-meanA;
end
M2 = sum(X.*X)/n;
M3 = sum(X.*X.*X)/n;
M4 = sum(X.*X.*X.*X)/n;
printf('Second moment about the mean(M2)= %f \n \n', M2);
printf('Third moment about the mean(M3)= %f \n \n', M3);
printf('Fourth moment about the mean(M4)= %f \n \n', M4);
sd= sqrt(M2);
printf('Standard deviation: %f \n \n', sd);
Csk= (meanA - modeA)/sd;
printf('Coefficient of skewness: %f \n \n', Csk);
Sk= (M3)^2/(M2)^3;
printf('Skewness: %f \n \n', Sk);
Kur= M4/(M2)^2;
printf('Kurtosis: %f \n \n', Kur);

