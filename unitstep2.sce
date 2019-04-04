function y=unitstep2(x)
y(find (x < 0)) = 0;
y(find (x >= 0)) = 1;
endfunction
clc
// define your independent values
x = [-4 : 1 : 4];
// call your previously defined function
y = unitstep2(x);
// plot
plot(x, y, 'm*')
xlabel('x');
ylabel('y');
title('Unit Step Function');
