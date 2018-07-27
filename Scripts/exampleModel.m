clear all;
close all;
clc;
options = odeset('RelTol', 1e-4, 'NonNegative', [1 2 3]);
figure
[t, x] = ode45('siv', [0 1825], [100 300 600], options);
plot(t, x);
legend('S', 'I', 'V')
title('SIV model')

figure
[t, x] = ode45('sir', [0, 10], [999, 1, 0], options);
plot(t, x);
legend('S', 'I', 'R')
title('SIR model')
