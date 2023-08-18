f = @(x)(cos(x/2) + sin(2 * x));
g = @(x2)(x2 - 5 * log(x2));

tol = 10^-10;

fprintf('Zeros of F calculated with newton and bisection\n');
xn1 = newton(f, 2, tol);
xb1 = bisection(f, 1.8, 2.2, tol);

fprintf('Zeros of G calculated with newton and bisection\n');
xn2 = newton(g, 1, tol);
xb2 = bisection(g, 0, 2, tol);
