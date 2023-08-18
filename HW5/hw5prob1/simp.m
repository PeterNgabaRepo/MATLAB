function I = simp(f, a, b, n)
h = (b - a) / n;
x = a : h : b;
y = f(x);
I = (h / 3) * ((y(1) + y(n + 1) + (4 * sum(y(2:2:n)) + (2 * sum(y(3:2:n))))));

