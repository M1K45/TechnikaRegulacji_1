t = 0:0.1:50;

x = 2 - (75/226)*sin(t)-(5/226)*cos(t)+ (683/226)*exp(-t/50).*cos(3/50*sqrt(111)*t) + (15733*sqrt(111)/75258)*exp(-t/50).*sin(3/50*sqrt(111)*t);

plot(t, x,"g.-");
title('Rozwiązanie analityczne dla x(0)=5 i x''(0)=1');
xlabel('Czas');
ylabel('Wartość zmiennej zależnej');
grid on;

num = [25 6 29 7 4]; 
den = [5 1/5 7 1/5 2 0]; 
[r, p, k] = residue(num, den)