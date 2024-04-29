syms s t;

F_3 = (s^3 + 4*s^2 + 6*s + 5) / ((s+8) * (s^2 + 8*s + 3) * (s^2 + 5*s + 7));

f_3 = ilaplace(F_3, s, t);

pretty(simplify(f_3));

fplot (f_3, [0, 50]);
%xlim([0 50])
xlim([0 5])
xlabel('Wektor czasu')
ylim([0 0.044])
ylabel('Przebieg czasowy')