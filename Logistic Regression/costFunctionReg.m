function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
% J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
% theta as the parameter for regularized logistic regression and the
% gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
% You should set J to the cost.
% Compute the partial derivatives and set grad to the partial
% derivatives of the cost w.r.t. each parameter in theta

%see equations on page 9 and 10 of ex2.pdf
% compute cost
h_theta = sigmoid(X*theta);
reg_theta = theta(2:end, :);

% note: (lambda / 2 * m) != (lambda / (2 * m))
reg_param = lambda/(2*m) * (reg_theta' * reg_theta);  
cost = (y' * log(h_theta)) + ((1-y')*log(1-h_theta));
J = - (1/m * cost) + reg_param;

% compute the usual partial derivatives, without regularization
% pd = partial derivatives
pd = 1/m * (X' * (h_theta - y));
pd_reg_param = (lambda/m)*theta;

% apply regularization, except for theta = 1 so set first term = 0
pd_reg_param(1) = 0;
grad = pd + pd_reg_param;


%or solution 2:
%J = (1/m) * sum((-1.*y.*log(sigmoid(X*theta))) - (1.-y).*log(1.-sigmoid(X*theta))) + (lambda/(2*m))*sum(theta(2:end).^2);
%grad = (1/m) .* X'*(sigmoid(X*theta) - y) + (lambda/m)*theta;
%in Octave, indexing starts from 1, so theta(1) corresponds to theta_0
%grad(1) = (1/m) .* X(:,1)'*(sigmoid(X*theta) - y);
% =============================================================

end
