t = linspace(0, 2*pi, 4);
a = 2;

x = cos(t) + t.*sin(t);
x = x.*a;

y = sin(t) - t.*cos(t);
y = y.*a;

plot(x,y)
grid on