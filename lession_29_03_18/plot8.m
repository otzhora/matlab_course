a = 100;
b = 2;
n = 4;
k = 14;
m = 5;

phi = linspace(-pi/2, 3*pi/2, 1000);
tic
r = zeros(1,1000);

for i = 1:1000
    r(1,i) = (a/(a+(phi(i)-pi/2)^n))*(b-sin(k*phi(i))-cos(m*phi(i)));
end
toc

tic 
    r = a./(a+(phi-pi/2).^n).*(b-sin(k*phi)-cos(m*phi));
toc

[x,y] = pol2cart(phi, r);

plot(x,y);