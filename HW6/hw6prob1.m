dx = .2;
dy = .5;
x = [-2 : dx : 2];
y = [-2 : dy : 2];
[X, Y] = meshgrid(x, y);
Z = X .^2 - Y .^2;

subplot(3, 1, 1);
surf(x, y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('f(x,y) = x^2 - y^2');
box on

subplot(3, 1, 2);
i = mesh(x, y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('f(x,y) = x^2 - y^2');
box on

subplot(3, 1, 3);
contour(x, y, Z);

axis([-2 2 -2 2])
grid on;
xlabel('x');
ylabel('y');
title('Contour Map for f(x)');
