function y = ApproxExp(x,n);
% Output parameter:  y (nth order Taylor approximation of e^x)
% Input parameters:  x (scalar)
%                    n (integer)
sum = 1;
for k=1:n
    sum = sum + x^k/factorial(k);
end
y = sum;