function showPath(A, b, XVals)
close all;

f = @(x, y)( 0.5*(x.^2*A(1,1) + x.*y*A(2,1) + x.*y*A(1,2) ...
                  + y.^2*A(2,2)) - x*b(1) - y*b(2));
h = .1;

% contour plot
x = [-4 : h : 5];
y = [-4 : h : 3];
[X Y] = meshgrid(x,y);
Z = f(X,Y);

min1 = min(Z(:));
max1 = max(Z(:));
v = min1 : (max1 - min1) / 20 : max1;


[C, H] = contour(X,Y,Z, v);
clabel(C, H);
grid on;
hold on;

% Plot the trajectory
plot(XVals(:,1),XVals(:,2), '-r*', 'linewidth', 2, 'markersize',2);
hold off;

