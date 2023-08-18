f = @(x)(sin(x.^.5));
g = @(x2)(exp(cos(x2)));
n = 4;

fprintf('  n  I(f)        I(g)\n');
fprintf('---------------------------\n');

while n <= 512
    fI = simp(f, 0, pi/2, n);
    gI = simp(g, 0, pi, n);
    fprintf('%3i  %9.8f  %9.8f\n', n, fI, gI);
    n = 2 * n;
end
    
