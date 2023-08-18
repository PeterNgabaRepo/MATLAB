A = [2 -1 3 ; -2 0 1];
B = [1 -1; -2 2; 4 4];
C = [4 4 0; -2 2 1; 3 3 -1];
D = [0 1 1; 2 4 5; -1 4 4];

a = [1; -1; 2];
b = [-1; -1; 0];

%(a) A .* B is not valid because the matrices do not have the same
%    dimensions
%    A * B is valid because the rows of B match the columns of A

A * B

%(b) C .* D is valid because the matrices have the same dimesions
%    C * D is valid because they have the # rows of C is the same as
%    columns of D

C .* D
C * D

%(c) a .* b  is valid because the matrices have the same dimensions
%    a * b is not valid becuase the columns of a doesnt match the rows of b

a .* b

ans = sum(a .* b)
ans = a' * b

%Vectors a and b are related because they have the same length, so when you
%do the transpose of a the columns of a match the rows of b

