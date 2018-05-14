function F = func_b(x)
global a b T
buf = a*cos(x) + b*sin(x);
F = 1./(buf.*buf);
a1 = num2str(a);
b1 = num2str(b);
T = ['1/(a cos(x) + b sin(x))^2, a = ', a1, 'b = ', b1];