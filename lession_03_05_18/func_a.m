function F = func_a(x)
global par T

F = exp(-par*x.*x).*cos(x.*x);
mu = num2str(par);
T = ['exp(-\mu x^2)cos x^2, \mu=', mu];