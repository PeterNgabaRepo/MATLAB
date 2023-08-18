function y = euler(f, t, y0, h, T)
% Parameters
%    t is a vector containing time discretization
%    y0 initial value
%    h is the step size

y = zeros(size(t));
y(1) = y0;
k = 1;
T = t(end);
while t(k) < T
   y(k+1) = y(k) + h*f(t(k), y(k));
   k = k + 1;
end



