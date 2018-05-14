figure('Name', 'Limacon', 'NumberTitle', 'off');

t = linspace(-pi, pi, 1000);

a = 10;
b = 6;

x = a/2+b*cos(t)+a/2*cos(2*t);
y = b*sin(t)+a/2*sin(2*t);

plot(x,y)

figure('Name', 'Folium of Descartes', 'NumberTitle', 'off');
t = -0.5:.01:1000;
a = 1;
x = 3*a*t./(1+t.^3);
y = (3*a*t.^2)./(1+t.^3);
plot(x,y);

figure('Name', 'Rose', 'NumberTitle', 'off');

phi = linspace(-100*pi, 100*pi, 10000);
k = .9;
rho = cos(k*phi);
[x,y] = pol2cart(phi, rho);
h = animatedline;
for i = 1:1000
    addpoints(h, x(i), y(i));
    drawnow 
end

disp(1);