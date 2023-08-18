function xn =newton(f,x0,tol)

N = 0;
NMAX = 1000;
x = x0;

while N <= NMAX && (f(x) > 10^-6 || f(x) < -(10^-6))
    N = N + 1;
    x = (x - (f(x) / (deriv(f, x, tol))));
end
xn = x;

fprintf('It took %i iterations to find the zero which is x = %4.8f\n', N, xn);
