u = 0 : (2 * pi) / 64 : 2 * pi;
v = 0 : (2 * pi) / 64 : 2 * pi;

[U, V] = meshgrid(u, v);
surf(cos(U) .* cos(V), sin(U) .* sin(V), sin(V));
shading interp;
colormap(hsv);
camlight();
view(-40, 28);

xlabel('x');
ylabel('y');
zlabel('z');
title('Parametric Surface');
box on