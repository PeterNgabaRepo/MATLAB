A = [1 -1 1;
     0 2 2;
     1 3 1;]
[P, D] = eig(A)
A1 = P * D * inv(P)

B = [1 2 1;
    1 -1 2;
    -2 -7 -1;
    ]
[P, D] = eig(B)
%no it doesnt have a unique solution