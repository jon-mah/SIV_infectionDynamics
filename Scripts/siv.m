% This function produces a forced SIV model / system of ordinary
% differential equations.
function dx = siv(t, x)
    dx = [0; 0; 0];
    alpha = 0.00001;
    beta = 0.045;
    gamma = 0.005;
    kappa = 0.006;
    r = 20;

    
    dx(1) = -alpha * x(1) * x(2) + beta * x(2) - gamma * x(1) + kappa * x(3) + r * sin( 2 * pi * t / 52);
    dx(2) = alpha * x(1) * x(2) - beta * x(2) - gamma * x(2) - r * sin( 2 * pi * t / 52);
    dx(3) = gamma * x(1) + gamma * x(2) - kappa * x(3);
end