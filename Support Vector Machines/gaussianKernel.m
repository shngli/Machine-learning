function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
% and x2 computed using a Gaussian kernel with bandwidth sigma

% size(x1) = [ 3, 1 ]
% size(x2) = [ 3, 1 ]

%See equation on page 6 of ex6.pdf
%numerator = sum((x1 - x2).^2);
%denominator = 2 * sigma^2;
%sim = exp(-numerator / denominator);
% Vector inner product:
% ||A|| = A' * A = sqrt(sum(a1^2 + a2^2 + ... + an^2))

sim = exp(-sum((x1-x2).^2) / (2*sigma^2));

%Alternative solution:
%sim = exp(-((x1-x2)' * (x1-x2)) / (2*sigma^2));
% =============================================================
    
end
