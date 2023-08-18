function plot_sol(t, y)
plot(t, y);
T = t(end);
xlim([0 T]);
grid on;
xlabel('x');
ylabel('y');
title('Plot of the numerical solution');
