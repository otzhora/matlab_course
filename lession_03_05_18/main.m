
global a b m d T;
T = '0';
a = 1;
b = 2;
m = 3;
d = [3, 5, 2, -1];
N = 100; L1 = 0; L2 = 2*pi; X = linspace(L1,L2,N);

Y = func_e(X);
plot(X,Y);
grid on;
title(T);

xr = ginput(2);
[x_m, y_m] = fminbnd(@func_e, xr(1, 1), xr(2, 1));
hold on;
plot(x_m, y_m, 'r*', xr(1,1), xr(1, 2), 'g*', xr(2, 1), xr(2, 2), 'g*')
hold off;