function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
% J = 0;

vect = (X*theta - y).^2;     % vect should be an m x 1 vector 
if (size(vect,1) ~= m) 
    disp('Attention: the vector (X*theta -y).^2 in computeCost.m is not of size m x n ');
end
J = (1/(2*m) ) * sum(vect) ; 


end
