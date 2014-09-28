function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%	theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%	taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    % theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    % of the cost function (computeCost) and gradient here.
    
	% ex1.pdf page 5, 6
	% J(theta) = (1/2m) * sum(h(x) - y)^2
	% theta = theta - (alpha/m) * sum((h(x)-y)*x)
	% h(x) = theta0 + theta1*x = theta transpose * x
	% X*theta-y gives a mx1 matrix of the values h(x)-y
	
	theta = theta - (alpha/m) * (X' * ((X*theta)-y));
	% ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
