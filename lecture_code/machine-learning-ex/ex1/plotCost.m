% Draw multiple linear regression cost vs num_iters
function plotCost(X, y)
    theta = zeros(3, 1);
    alpha = 0.03;
    num_iters = 1000;
    [~, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);
    
    % Plot the convergence graph
    plot(1:num_iters, J_history, '-b', 'LineWidth', 2);
    xlabel('Number of iterations');
    ylabel('Cost J');