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
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
vect = (X*theta - y).^2;     % vect should be an m x 1 vector 

reg = theta(2:end).^2; 
J = (1/(2*m) ) * ( sum(vect) + lambda*sum(reg)) ; 

vect2= X*theta - y ; 

%for i =1:n 
%    grad(i) = (1/m) *(vect2' * X(:,i));
%end

grad = (1/m) * X' * vect2; 
temp = theta; 
temp(1)=0; 
grad = grad+ (lambda / m) * temp;

% =========================================================================

%grad = grad(:);

end
