x = [-pi/2 : pi/4 : pi/2]
y =  1 ./ ((cos(x)).^2 + 4 * (sin(x)).^2)
y1 = 1 ./ ((cos(x)).^2 + 9 * (sin(x)).^2)
y2 = 1 ./ ((cos(x)).^2 + 16 * (sin(x)).^2)
hold on
plot(x,y)
plot(x, y1)
plot(x, y2)
axis on
grid on
title('Graph of f(x) = 1/(cos^2(x) + k^2(sin^2(x)))')
xlabel('x')
ylabel('f(x)')
xlim([-pi/2 pi/2])