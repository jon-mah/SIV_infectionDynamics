function dx = sir(t, x)
    dx = [0; 0; 0];
    alpha = 0.004;
    beta = 1;
    
    dx(1) = -alpha * x(1) * x(2);
    dx(2) = alpha * x(1) * x(2) - beta * x(2);
    dx(3) = beta * x(2);
end