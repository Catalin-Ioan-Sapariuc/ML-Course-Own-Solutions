function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
%num_labels = size(Theta2, 1);

X = [ones(m, 1) X];
z2=Theta1*X'; 
a2=sigmoid(z2);

a2t=a2';
m2=size(a2t,1);
a2e=[ones(m2,1) a2t];

a3=Theta2*a2e';
a3=sigmoid(a3);

[Y, pt] = max(a3);

p=pt' ; 
% This should be the correct size of the output vector p: note: (Theta1 is 25X401 and Theta2 is 
% 10x26, then a2 is 25x5000 , a2e is 5000 X 26 , a3 is 10 X 5000 ) 
% p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


% =========================================================================


end
