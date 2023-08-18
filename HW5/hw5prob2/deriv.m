function I = deriv(f, a, h)

y2 = f(a + h);
y1 = f(a - h);

I = (y2 - y1) / (2 * h);
