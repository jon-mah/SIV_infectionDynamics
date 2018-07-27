clear all;
close all;
clc;
options = odeset('RelTol', 1e-4, 'NonNegative', [1 2 3]);
figure
[t, x] = ode45('siv', [0 3650], [100 300 600], options);
plot(t, x(:,1), 'b:', t, x(:,2), 'r-.', t, x(:,3), 'g--')
legend('S', 'I', 'V')
title('SIV model')

figure
[t, x] = ode45('sir', [0, 10], [999, 1, 0], options);
plot(t,x(:,1),'g',t,x(:,2),'b--o',t,x(:,3),'c*')
legend('S', 'I', 'R')
title('SIR model')
