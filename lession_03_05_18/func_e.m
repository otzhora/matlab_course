function F = func_e(x)
global d T

arr = zeros(length(x), length(d));
for i = 1:length(d) 
   arr(:, i) = (d(i) - sin(i*x)).^2;
end

F = sum(arr, 2);

T = ['sum(di-sin(ix))^2'];