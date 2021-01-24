function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

grad = zeros(size(theta));
[m, n]=size(X); 

if (n ~= size(theta,1) )
    fprintf('warning in costFunction: size(X,2) and size(theta,1) are different in costFunction, check sizes');
end

vect= y .*log(sigmoid(X*theta)) +(1-y) .* (log(1 - (sigmoid(X*theta) ))) ; 
thetars = (theta(2:end)).^2; 
J = -(1 / m) *sum(vect) +(lambda /(2*m) ) *  sum(thetars) ; 

vect2= sigmoid(X*theta) - y ; 

grad(1) = (1/m) *(vect2' * X(:,1));

for j =2:n 
    grad(j) = (1/m) *(vect2' * X(:,j)) + (lambda / m) * theta(j) ; 
end


end
