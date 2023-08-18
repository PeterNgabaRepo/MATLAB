f = @(x)((1 + x .^ 2) .^ -1);
k = 2 : 2 : 6;

xi = -20 : .01 : 20;
x = xi;
yi = f(x);

i = 1;

while i <= length(k)
    p = polyfit(xi, yi, k(i));
    y = polyval(p, x);
    
    figure(1);
    subplot(3, 1, i);
    plot(x, f(x), x, y, '--');
    
    grid on;
    xlabel('x');
    ylabel('y');
    title('Graph of Approximation vs Actual Function');
    legend('Actual', 'Approximation');
    
    figure(2);
    subplot(3, 1, i);
    plot(x, abs(y - f(x)));
    
    grid on;
    xlabel('x');
    ylabel('y');
    title('Approximation Error');
    i = i + 1;
end