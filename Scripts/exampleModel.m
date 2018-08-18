%%
% Produces the output of a forced SIV model with three different sets of 
% initial conditions over the duration of 10 years.
clear all;
close all;
clc;
options = odeset('RelTol', 1e-4, 'NonNegative', [1 2 3]);
figure
[t, x] = ode45('siv', [0 520], [400 100 500], options);
plot(t, x(:,1), 'b.', t, x(:,2), 'r.', t, x(:,3), 'g.')
legend('S_1', 'I_1', 'V_1')
hold on
[t, x] = ode45('siv', [0 520], [500 200 300], options);
plot(t, x(:,1), 'b:', t, x(:,2), 'r:', t, x(:,3), 'g:')
hold on
[t, x] = ode45('siv', [0 520], [100 500 400], options);
plot(t, x(:,1), 'b-', t, x(:,2), 'r-', t, x(:,3), 'g-')
xlabel('Weeks')
ylabel('Individuals Infected')
legend('S_1', 'I_1', 'V_1', 'S_2', 'I_2', 'V_2', 'S_3', 'I_3', 'V_3', 'Location','best')
title('Forced SIV model')
%%
% Produces the output of a non-forced SIV model with three different sets
% of initial conditions.
clear all;
close all;
clc;
options = odeset('RelTol', 1e-4, 'NonNegative', [1 2 3]);
figure
[t, x] = ode45('nonForced_siv', [0 520], [400 100 500], options);
plot(t, x(:,1), 'b.', t, x(:,2), 'r.', t, x(:,3), 'g.')
legend('S_1', 'I_1', 'V_1')
hold on
[t, x] = ode45('nonForced_siv', [0 520], [500 200 300], options);
plot(t, x(:,1), 'b:', t, x(:,2), 'r:', t, x(:,3), 'g:')
hold on
[t, x] = ode45('nonForced_siv', [0 520], [100 500 400], options);
plot(t, x(:,1), 'b-', t, x(:,2), 'r-', t, x(:,3), 'g-')
xlabel('Weeks')
ylabel('Individuals Infected')
legend('S_1', 'I_1', 'V_1', 'S_2', 'I_2', 'V_2', 'S_3', 'I_3', 'V_3', 'Location','best')
title('Non-forced SIV model')
%%
% 
clear all;
close all;
clc;
options = odeset('RelTol', 1e-4, 'NonNegative', [1 2 3]);
figure
[t, x] = ode45('nonForced_siv', [0 520], [1000 0 0], options);
plot(t, x(:,1), 'b:', t, x(:, 3), 'g:')
hold on
[t, x] = ode45('nonForced_siv', [0 520], [800 0 200], options);
plot(t, x(:,1), 'b.', t, x(:, 3), 'g.')
hold on
[t, x] = ode45('nonForced_siv', [0 520], [600 0 400], options);
plot(t, x(:,1), 'b-', t, x(:, 3), 'g-')
xlabel('Weeks')
ylabel('Individuals Infected')
legend('S', 'V', 'S_2', 'V_2', 'S_3', 'V_3', 'Location','best')
title('Non-forced SIV Model with DFE Initial Conditions')
%%
clear all;
close all;
clc;
options = odeset('RelTol', 1e-4, 'NonNegative', [1 2 3]);
figure
[t, x] = ode45('siv', [0 520], [100 200 700], options);
plot(t, x(:,1), 'b.', t, x(:,2), 'r.', t, x(:,3), 'g.')
legend('S_1', 'I_1', 'V_1')
xlabel('Weeks')
ylabel('Individuals Infected')
legend('S_1', 'I_1', 'V_1', 'Location','best')
title('Forced SIV model')

%%
clear all;
close all;
clc;
options = odeset('RelTol', 1e-4, 'NonNegative', [1 2 3]);
figure
[t, x] = ode45('siv', [0 1040], [8000 1000 1000], options);
plot(t, x(:,1), 'b.', t, x(:,2), 'r.', t, x(:,3), 'g.')
legend('S_1', 'I_1', 'V_1')
hold on
[t, x] = ode45('siv', [0 1040], [1000 2000 7000], options);
plot(t, x(:,1), 'b:', t, x(:,2), 'r:', t, x(:,3), 'g:')
hold on
[t, x] = ode45('siv', [0 1040], [5500 500 4000], options);
plot(t, x(:,1), 'b-', t, x(:,2), 'r-', t, x(:,3), 'g-')
xlabel('Weeks')
ylabel('Individuals Infected')
legend('S_1', 'I_1', 'V_1', 'S_2', 'I_2', 'V_2', 'S_3', 'I_3', 'V_3', 'Location','best')
title('Forced SIV Model with Informed Parameters')
