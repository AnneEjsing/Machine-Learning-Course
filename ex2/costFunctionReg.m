function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

hypothesis = sigmoid(X*theta);
regularization = (lambda / (2 * m)) * sum(theta(2:end).^2)
J = (1 / m) .* (-y' * log(hypothesis) - (1 - y)' * log(1 - hypothesis)) + regularization

theta(1) = 0;
error = hypothesis - y;
grad = (1 / m) * (X' * error) + (lambda/m) * theta
%grad = ((1 / m) * X' * (hypothesis - y)) .* ((lambda / m) * theta(1:end))
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
