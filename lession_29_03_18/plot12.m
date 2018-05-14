s = 1000;
t = linspace(-5, 5, 1000);
k = 1:s;
a = 1/4;
b = 1/16;
m = 8;
n = 8;

x = cos(t)-a*cos(m*t)-b*cos(n*t);
y = sin(t)+a*sin(m*t)+b*sin(n*t);
figure('Name', 'plot12', 'NumberTitle', 'off');
hold on;
for i = k
    plot(x./i, y./i);
end
hold off