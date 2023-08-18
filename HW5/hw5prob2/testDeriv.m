function testDeriv

function y = sinFunct(x)
    y = cos(x/2) + sin(2 * x);
end

h = 10^-3;
x = -5: .0025 : 5;

y = sinFunct(x);
derivX = deriv(@sinFunct, x, h);

hold on
plot(x, y);
plot(x, derivX);
hold off
axis on
grid on
title('Graph of f(x) and Df(x)')
xlabel('x')
ylabel('f(x) and Df(x)')
legend('F(x)', 'DF(x)');
end



