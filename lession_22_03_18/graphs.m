%%
x = 0:.03:1; 
x1 = -3:.1:3;
y = x.*(x-1)+0.1;
y1 = (x1 + 0.5) / 5;
plot(x, y, x1, y1)
grid on
xlabel('Time')
ylabel('My func')
title("SUKKK")

%%
f = figure();

%%
x = 0: .02: 2*pi;
subplot(2, 2, 1)
plot(x, sin(x))

subplot(2, 2, 2)
plot(x, sin(2*x))

subplot(2, 2, 3)
plot(x, sin(3*x))

subplot(2, 2, 4)
plot(x, sin(4*x))

%% 

fplot(@graph_two_plots, [0 pi]);

%% 

ezplot(@(x,y) ((x-0.4)^2)*(x^2+y^2)-x^2, [-1 2 -4 4])