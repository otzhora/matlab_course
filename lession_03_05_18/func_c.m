function F = func_c(x)
global T

F = 2-abs(x).*exp(-abs(x-1));

T = ['2-abs(x) * exp(-abs(x-1))'];