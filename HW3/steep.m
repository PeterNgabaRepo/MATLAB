
function [x, F, it, XVals] = steep(x0, A, b, itmax)

tol = 10^-6;
it = 0;

% The algorithm for steepest
x = x0;
Dfx = b - A * x;

XVals = [];

while norm(Dfx) > tol && (it <= itmax)
    it = it + 1;
    p = b - A * x;  % . . . some search direction
    a = sum(p .* p)/ sum( (A * p) .* p) ;% . . . step length
    prevX = x;
    x = x +  a*p
    
    XVals = [XVals; x(1) x(2)];
    
end
F = 1/2 * x' * A * x - x' * b;

