figure('Name', 'plot13.1', 'NumberTitle', 'off');

x = linspace(-10, 10, 1000);
y = 1./x-1./(x-1)+1./(x-2);

plot(x, y)

figure('Name', 'plot13.2', 'NumberTitle', 'off');

phi = linspace(-pi, pi, 1000);
n = 2;
m = 2;

x = cos(n*phi).*((cos(phi)).^m);
y = sin(n*phi).*((sin(phi)).^m);

plot(x,y);