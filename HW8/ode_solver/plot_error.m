function plot_error(t, y)
err = y - true_sol(t);
plot(t, err);
T = t(end);
xlim([0 T]);
grid on;
xlabel('x');
ylabel('y');
title('Plot of the approximation error');
