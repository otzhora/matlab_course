%% 1 a

sym x;
p = poly2sym([1 4 -2 -14 -3 -18]);
factor(p)

%% 1 b

syms x y f(x,y);
f(x,y) = x^3 + x^2*y + x^2 - 2*x*y^2 + x*y - 2*y^2;
factor(f(x,y))

%% 2 1

syms x f(x)
f(x) = x*exp(-x);
limit(f(x), Inf)

%% 2 2

syms x f(x)
f(x) = (tan(x))^tan(2*x);
limit(f(x), pi/4)

%% 2 4
syms x f(x)
f(x) = (7*x^3+x^2-1)/(5*x^3+2*x+1);
limit(f(x), Inf)

%% 2 5
syms x h f(x, h)
f(x, h) = (sqrt(x+h)-sqrt(x))/h;
limit(f(x,h), h, 0)


%% 3 1 

syms x f(x) 
f(x) = atan(x)/2-x/(2*(1+x^2))^2;
simplify(diff(f(x)))


%% 3 5

syms x f(x)
f(x) = (1/6) * log((x-3)/(x+3));
simplify(diff(f(x)))

%% 4 1

syms x f(x)
f(x) = sqrt(1-x^2) / x^2;
int(f(x))

%% 4 2
syms x f(x)
f(x) = 1/(sin(x))^3;
int(f(x))

%% 4 4

syms x f(x)
f(x) = 15*sqrt(x+3)/((x+3)^2*sqrt(x));
int(f(x), 1/8, 1)


%% 4 7

syms x f(x)
f(x) = log(sin(x));
int(f(x), 0, pi/2)

%% 5 1

syms k 
symsum(1/k^2)

%% 5 3

syms x k
symsum(x^k, k, 0, inf)


%% 5 5 

syms x k
symsum((x-k)^(-3), k, -inf, inf)


%% 6

syms x f(x)
f(x) = log(2*x-1);
fplot(f(x), 'r');
hold on
t(x) = taylor(f(x), x, 1);
fplot(t(x), 'g');


%% 7

syms x f(x) y(x) der(x) 

y(x) = exp(1/(1-x^2))/(1+x^2)
fplot(y(x), [-7 7])
axis([-7 7 -10 10]);
hold on

der(x) = diff(y(x));
points = solve(der(x), x )

plot(points, y(points), 'r*');