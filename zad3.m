Tend = 50;
dt1 = 0.1;
dt2=1;
tspan1 = 0:dt1:Tend;
tspan2 = 0:dt2:Tend;

A = 4;
B = 1;
C = 5;

%y0 = [0; 0]; 
y0 = [5; 1];
%y0 = [1; 10];
%y0 = [50; 10];
[t1, y1] = ode45(@(t1, y1) myODE(t1, y1, C, A, B), tspan1, y0)
[t2,y2] = ode45(@(t2, y2) myODE(t2, y2, C, A, B), tspan2, y0);


hold on
title('Rozwiązanie numeryczne dla x(0)=50 i x''(0)=10'); 
plot(t1, y1(:, 1),"b.-"); 
plot(t2, y2(:, 1)-5,"r.-"); 
xlabel('Czas');
ylabel('Wartość zmiennej zależnej');
grid on
legend('\Delta t=0.1', '\Delta t=1') 
hold off


function dydt = myODE(t, y, C, A, B)
    dydt = zeros(2,1);
    dydt(1) = y(2);
    dydt(2) = (1/5) * (A + sin(B*t) - (1/C)* y(2) - 2 * y(1));
end

