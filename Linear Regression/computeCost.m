function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
% You should set J to the cost.

% ex1.pdf page 5
% J(theta) = (1/2m) * sum(h(x) - y)^2
% h(x) = theta0 + theta1*x
% X*theta-y gives a m x 1 matrix of the values h(x)-y

% Efficient vectorized solution:
J = (1/(2*m)) * (X*theta-y)' * (X*theta-y);  
% or J = (1/(2*m))*(transpose(X*theta-y)*(X*theta-y));
% or J = (1/(2*m)) * sum((X * theta - y).^2);

% =========================================================================

end