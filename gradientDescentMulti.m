function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = size(X,1); % number of training examples
n=size(X,2);  % number of features
J_history = zeros(num_iters, 1);

temp = zeros(1,n);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
     vect = X*theta - y; 
     for i=1:n
         temp(i) = (1/m) * (vect' * X(:,i)) ; 
     end
     
     for i=1:n
        theta(i) = theta (i) - alpha*temp(i); 
     end

     J_history (iter) = computeCostMulti(X, y, theta) ; 
     
end



    % ============================================================
end
