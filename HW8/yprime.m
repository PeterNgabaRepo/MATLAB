function dydt=yprime(t,y)

dydt = [y(2); -.2 * y(2) - sin(y(1))];
