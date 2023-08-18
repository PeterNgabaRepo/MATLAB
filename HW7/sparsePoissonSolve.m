function x = sparsePoissonSolve(b,n)

A = gallery('poisson', n);
x = A \ b;

