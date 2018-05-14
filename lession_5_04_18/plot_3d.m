
h = 0.0001;
t = 0:h:6*pi;

x = 12*(t);
y = 2*sin(t);

plot3(x, y, t);
hold on
grid on
xlabel('x');
ylabel('y');
zlabel('t');


xd = diff(x)/h;
yd = diff(y)/h;
td = diff(t)/h;

t0 = 7*pi/2;
t1 = linspace(-1, 1, 1000);
X = x(round(t0)/h) + xd(round(t0)/h) * t1;
Y = y(round(t0)/h) + yd(round(t0)/h) * t1;
T = t(round(t0)/h) + td(round(t0)/h) * t1;

plot3(X, Y, T, 'Color', 'red');
hold off

