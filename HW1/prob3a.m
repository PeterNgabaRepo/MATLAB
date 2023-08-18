x = [-2 * pi : 4 * pi/10 : 2 * pi]
y =  2 * sin((x)) + cos((x))
plot(x,y)
axis on
grid on
title('Graph of f(x) = -2sinx + cosx')
xlabel('x')
ylabel('f(x)')
xlim([-2 * pi 2 * pi])


x = [0:4 * pi/10: 2*pi]
y = exp(x) .* cos((x))
plot(x,y)
axis on
grid on
title('Graph of f(x) = e^x(cosx)')
xlabel('x')
ylabel('f(x)')
xlim([0  2*pi])

x = [-5: 1: 5]
y = 1./(1 + x.^2)
plot(x,y)
axis on
grid on
title('Graph of f(x) = 1/(1+x^2)')
xlabel('x')
ylabel('f(x)')
xlim([-5  5])