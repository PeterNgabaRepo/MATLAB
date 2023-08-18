function dydt=odesystem(~,~)

yprime = @(t, y)([y(2); -.2 * y(2) - sin(y(1))]);


yi = [0; 3];
t = [0:1: 40];
[T,Y] = ode45(yprime,t, yi);

subplot(2,1,1);
plot(T, Y(:,1), T, Y(:,2), '--');

y = struct('y1', Y(:, 1), 'y2', Y(:, 2));

legend('Y1', 'Y2');
grid on;
xlabel('T');
ylabel('Y(T)');
title('Graph of Y1(T) and Y2(T)');

subplot(2,1,2);
plot(Y(:, 1), Y(:, 2));
grid on;
xlabel('Y1(T)');
ylabel('Y2(T)');
title('Phase Plane Diagram of Y1(T) and Y2(T)');

T

