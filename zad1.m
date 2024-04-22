% A = 4, B = 1, C = A+B = 5

syms t;

% pierwsza funkcja
f_1 = 4*t*exp(-t);

F_1 = laplace(f_1);

pretty(simplify(F_1));

%druga funkcja
f_2 = 4 - exp(-2*t)*(sin(t-1) - cos(t-1) + sin(t-5) * cos(t-5));

F_2 = laplace(f_2);

pretty(simplify(F_2));



