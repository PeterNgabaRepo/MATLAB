% This is the main driver module that
% solves the given differential equation.

T = 2;        % the final time
y0 = 1;       % the initial condition
h = 2/128;    % the step-size
t = [0 : h : T];
y = euler(@frhs, t, y0, h);
figure(1);
plot_sol(t, y);
figure(2);
plot_error(t, y);
