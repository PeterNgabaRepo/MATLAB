N = 128
x = 0:2 * pi/N : 2 * pi
y = x.^2 .* sin(x)
plot(x, y)

[m, i] = min(y)
[n, j] = max(y)

hold on
plot(x(i), m, '*');
plot(x(j), n, '*');
hold off