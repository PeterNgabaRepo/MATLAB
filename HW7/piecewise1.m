function Y = piecewise1(x)
I = x <= 1/2;
Y(I) = 2 * x(I);

I = (x > 1/2 & x <= 1);
Y(I) = -2 * (x(I) - 1);

I = x > 1;
Y(I) = log(x(I));
