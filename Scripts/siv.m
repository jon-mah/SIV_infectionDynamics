function dx = siv(t, x)
    dx = [0; 0; 0];
    alpha = 0.00055;
    beta = 0.1;
    gamma = 0.0009;
    kappa = 0.0005;

    
    dx(1) = -alpha * x(1) * x(2) + beta * x(2) - gamma * x(1) + kappa * x(3) - 0.6 * sin( t / 58);
    dx(2) = alpha * x(1) * x(2) - beta * x(2) - gamma * x(2) + sin( t / 58);
    dx(3) = gamma * x(1) + gamma * x(2) - kappa * x(3) - 0.4 * sin( t / 58);
end