A = [2 0; 0 6];
b = [1; -4];
x0 = [-3; -2];
itmax = 15;

[x, F, it, XVals] = steep(x0, A, b, itmax);
showPath(A, b, XVals);