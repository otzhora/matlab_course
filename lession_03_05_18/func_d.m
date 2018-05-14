function F = func_d(x)
global m T

arr = zeros(length(x), m);
for i = 1:m 
   arr(:, i) = (cos(i*x) - sin(i*x)).^2;
end

F = sum(arr, 2);

T = ['sum((coskx - sinkx)^2)'];