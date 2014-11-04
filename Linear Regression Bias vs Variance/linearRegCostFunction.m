function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
% regression for a particular choice of theta.
% You should set J to the cost and grad to the gradient.

% Part 1.2 Calculate cost function first
% See equations on page 3 of ex5.pdf
% X: m x (n + 1)
% y: m x 1
% theta, grad: (n + 1) x 1
% Calculate the first term of J
% difference = (X*theta)-y
% errors = sum(difference .^ 2)
sum_errors = (1/(2*m)) * (sum(((X*theta)-y) .^ 2));
% Regularization, notice that we DO NOT regularize the first parameter
reg_term = (lambda/(2*m)) * sum(theta(2:end) .^ 2);
% And finally our cost function
J = sum_errors + reg_term;

%Alternative 1 line solution for cost function:
%J = (1/(2*m)) * sum((X*theta-y).^2) + (lambda/(2*m)) * sum(theta(2:end).^2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 1.3 Calculate gradient terms
% Notice how we use full vectorization here
% The trick is to compute the summatory term within the gradient function
% using a multiplication of the transpose of the input examples and
% the errors in our predictions. The transpose of X gives us all the feature
% i for all the examples in the i row and so on ...
% Also, since we DO NOT apply regularization for theta1, we set the
% first element of theta as 0

% In the previous assignation, the term after the + operator could be this temp:
% temp = theta;
% temp(1) = 0;
% grad = grad + ((lambda/m) * temp);
temp = theta;
temp(1) = 0;
grad = (1/m) .* (X' * ((X*theta) - y)) + (lambda/m) .* temp;

% Alternative solution for gradient:
%grad = ((X' * ((X*theta)-y)) / m) + ((lambda/m) * [0; theta(2:end)]);
% =========================================================================

grad = grad(:);

end
