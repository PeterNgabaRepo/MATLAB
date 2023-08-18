A = [3 0; 0 1];
b = [1; 1];
x0 = [0; 0];
itmax = 5;


 [x, F, it] = steep(x0, A, b, itmax);
 x
 F
 it