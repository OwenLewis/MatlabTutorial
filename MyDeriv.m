function [d,err]=MyDeriv(f,fprime,a,h)
% Output parameter:     d   (approximate derivative using finite difference (f(h+h)-f(a))/h)
%                       err (approximation error)

% Input parameters:     f      (function)
%                       fprime (derivative function)
%                       a      (point at which derivative approx)
%                       h      (stepsize)

d = (f(a+h) - f(a))/h;
err = abs(d - fprime(a));
