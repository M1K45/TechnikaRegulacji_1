Tend = 10;
dt = 0.01;
tspan = 0:dt:Tend;

A = 4;
B = 1;
C = 5;

y0 = [1; 1]; 

[t, y] = ode45(@(t, y) myODE(t, y, C, A, B), tspan, y0);

plot(t, y(:, 1), '-o'); 
xlabel('Czas');
ylabel('Wartość zmiennej zależnej');

function dydt = myODE(t, y, C, A, B)
    dydt = zeros(2,1);
    dydt(1) = y(2);
    dydt(2) = (1/5) * (A + sin(B*t) - (1/5) * y(2) - 2 * y(1));
end