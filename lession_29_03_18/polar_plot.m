theta = linspace(0, 10*pi, 1000);

[x,y] = pol2cart(theta, sin(theta)./theta);

plot(x, y)
hold on 
plot(x(2), y(2), '-o')
plot(x(1000), y(1000), '-*')
hold off