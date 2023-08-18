function hw7prob4
    function x = sparsePoissonSolve(b, n)
        A = gallery('poisson', n);
        x = A \ b;
    end

    function x = fullPoissonSolve(b, n)
        A = gallery('poisson', n);
        B = full(A);
        x = B \ b;
    end
    

n = 10 : 10 : 100;
t = zeros(1, length(n));
T = zeros(1, length(n));
i= 1;

while i <= length(n)
  b = rand(n(i)^2);
  
  tic;
  sparsePoissonSolve(b, n(i));
  t(i) = toc;
  
  tic;
  fullPoissonSolve(b, n(i));
  T(i) = toc;
  i = i + 1;
end

hold on;
plot(n, t);
plot(n, T);
hold off;
legend('Sparse Matrix','Full Matrix');
grid on;
xlabel('n');
ylabel('time');
title('Computational Time ');

%The computational time was much greater when using the full matrix as
%opposed to the sparse matrix
end
