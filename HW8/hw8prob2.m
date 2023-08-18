x0 = [3; -1; 0; 1];

f = @(x)((x(1) + 10 * x(2))^2 + 5 * (x(3) - x(4))^2 + (x(2) - 2 * x(3))^4 + 10 * (x(1) - x(4))^4);
[x, fval, itercount] = fminsearch(f, x0);
fprintf('The minimizer found is %4.10f\n\n', x);

fprintf('Value of the objective function at those point is %4.10f\n\n', fval);
fprintf('It took %d iterations to converge\n', itercount);
