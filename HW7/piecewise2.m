function z = piecewise2(x,y)
z = zeros((length(y)) , length(x));

I = (x < 1 & y < 1);
z(I) = x(I) .* y(I);

I = (x >= 1 & y < 1);
z(I) = -y(I) .* (x(I) - 2);

I = (x >= 1 & y >= 1);
z(I) = (x(I) - 2) .* (y(I) - 2);

I = (x < 1 & y >= 1);
z(I) = -x(I) .* (y(I) - 2);