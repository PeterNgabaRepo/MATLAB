n = 100 : 100 : 9000;
t = zeros(1, length(n));
T = zeros(1, length(n));
i= 1;

while i <= length(n)
  tic;
  mult_for(n(i));
  t(i) = toc;
  
  tic;
  mult_vec(n(i)); 
  T(i) = toc;
  i = i + 1;
end



hold on;
plot(n, t);
plot(n, T);
hold off;
legend('For Loop','Vectorization');
grid on;
xlabel('n');
ylabel('time');
title('Computational Time ');

%From up to n = 200 the for loop is quicker but after that vectorization
%remains below .01 seconds while the for loop increases exponentially