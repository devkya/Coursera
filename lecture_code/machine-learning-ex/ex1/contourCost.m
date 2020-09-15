% surface & contour graph.
function contourCost(X, y, theta)
    theta0_vals = linspace(-10, 10, 100);
    theta1_vals = linspace(-1, 4, 100);
    
    J_vals = zeros(length(theta0_vals), length(theta1_vals));
    for i = 1:length(theta0_vals)
        for j = 1:length(theta1_vals)
    	  t = [theta0_vals(i); theta1_vals(j)];    
    	  J_vals(i,j) = computeCost(X, y, t);
        end
    end
    
    J_vals = J_vals';

    % Surface plot
    figure(1);
    surf(theta0_vals, theta1_vals, J_vals)
    xlabel('\theta_0'); ylabel('\theta_1');
    title('Surface');
    saveas(gcf, 'Surface plot.pdf')
    % Contour plot
    figure(2);
    % Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
    contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
    xlabel('\theta_0'); ylabel('\theta_1');
    title('Contour, showing minimum');
    hold on;
    theta = gradientDescent(X, y, theta, 0.01, 1000);
    plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);
    hold off;
    saveas(gcf, 'Contour plot.pdf')
end