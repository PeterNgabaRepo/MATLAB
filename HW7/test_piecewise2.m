x = 0 : .0025 : 2;
y = 0 : .0025 : 2;
[X, Y] = meshgrid(x, y);

z = piecewise2(X,Y);
surf(X, Y, z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Parametric Surface for Piecewise 2');
box on
