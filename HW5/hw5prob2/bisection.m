function xb = bisection(f, a, b, tol)

N = 1;
c = (a + b) / 2;
NMAX = 1000;

while (N <= NMAX) && (f(c) > tol || f(c) < -tol)
    N = N + 1;
    c = (a + b) / 2;
    
    if sign(f(c)) == sign((f(a)))
        a = c;
    else
        b = c;
    end
end
xb = c;
fprintf('It took %i iterations to find the zero which is x = %4.2f\n\n', N, xb);
