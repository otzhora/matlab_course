
% 1
P = [1, -3.55, 5.1, -3.1];
x = linspace(1, 3, 1000);
F = polyval(P, x);
plot(x, F);
grid on;
hold on;
plot(x, zeros(1000), 'Color', 'red');

%%

% 2
P1 = [2, -3, 4, -5, 6];
P2 = [1, -3, 1];

[q, r] = deconv(P1, P2);


%%

% 3
p = [1, -2, 6, -10, 16];
y = [1, 0, 0, 0, 0];
z = [1, 0, 0, 0];
x0 = 4;

for i=2:5
    y(i) = y(i-1) * x0 + p(i);
end

for i=2:4
    z(i) = z(i-1) * x0 + y(i);
end

disp(y(5))

%%

%3
p = [1, complex(1, 2), 0, -complex(1, 3), 0, 7];
y = [1, 0, 0, 0, 0, 0];
z = [1, 0, 0, 0, 0];
x0 = complex(-2, -1);


for i=2:6
    y(i) = y(i-1) * x0 + p(i);
end

for i=2:5
    z(i) = z(i-1) * x0 + y(i);
end


%%

%4
format short
disp('-------')
n = 2;
p = zeros(1, 2*n+1);
p(1) = 1;
p(n+2) = -n;
p(n) = n;
p(2*n+1) = -1;

rts = roots(p);
multiple = [];
idx = 1;
eps = 0.00001;
for i = 1:size(rts)
    col = 0;
    for j = i+1:size(rts)
        if i ~= j && abs(real(rts(i)) - real(rts(j))) < eps && abs(imag(rts(i)) - imag(rts(j))) < eps
           col = col + 1;
        end
    end
    if col > 1
        multiple(idx) = rts(i);
        idx = idx + 1;
    end
end


%%

% 6

n = 2;
p = zeros(1, n + 1);
p(1) = 1;
p(n+1) = -1;

[r,s,K] = residue(1, p);


%% 

% 7
n = 10;

x = zeros(1, n+1);
y = zeros(n+1, 1);
x(1) = 0;
y(1) = 1;

for i=2:n+1
   x(i) = x(i-1) + 1;
end

for i=2:n+1
    y(i) = 2^(i-1);
end

X = zeros(n+1);
for i=1:n+1
    for j=1:n+1
        X(i,j) = x(i)^(n+1-j);
    end
end

p = zeros(1, n+1);
p(1) = det([y, X(:,2:end)])/det(X);
p(n+1) = det([X(:,1:end-1), y])/det(X);
for i = 2:n
    p(i) = det([X(:,1:i-1),y, X(:,i+1:end)])/det(X);
end

x = linspace(0, n, 1000);
y = polyval(p, x);
plot(x, y);
grid on;

%% 

% 8.1

p = [1, -6, 15, -14];
rts = roots(p);
x1 = min(rts(imag(rts)==0));
x2 = max(rts(imag(rts)==0));
x = linspace(x1-1, x2+1, 10000);
y = polyval(p, x);

plot(x, y);

%%

% 8.2
p = [24, -42, -77, 56, 60];
rts = roots(p);
x1 = min(rts(imag(rts)==0));
x2 = max(rts(imag(rts)==0));
x = linspace(x1-1, x2+1, 10000);
y = polyval(p, x);

plot(x, y);


%% 

% 9 

n = 3;
A = rand(3,3);
p = poly(A);

disp(polyvalm(p, A))
