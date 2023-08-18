function F = compvec(x,y)

tol = 10^-10;
ans1 = x .* y;
dot = sum(ans1);

magX = (sum(x.^2))^.5;
magY = (sum(y.^2))^.5;

val = dot/(magX * magY);

if ((x >= -tol) & (x <= tol)) | ((y >= -tol) & (y <= tol))
    F = 'Linearly dependent vectors (one of them is zero)';
elseif ((val >= 1 - tol) && (val <= 1 + tol)) || ((val >= -1 - tol) && (val <= -1 + tol))
    F = 'Linearly dependent vectors (both non-zero)';
elseif (val >= 0 - tol) && (val <= 0 + tol)
    F = 'Linearly independent vectors (orthogonal)';
else
    F = ' Linearly independent vectors';
end
fprintf(F)
fprintf('\n')
    
    
