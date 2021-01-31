function [] = randompredictions(X, Theta1, Theta2, m) 
% this is a script file which chooses a row of X (set of 400 features) and 
% tries to predict the correct digit y using the predict values learnt from
% predict.m 
%rp = randi(m);
% Predict
% NOTE: before running this function, call load('ex3data1.mat' and
% load('ex3weights.mat' (so that X, y and th weights Theta1 and Theta2 are
% loaded, then choose an m from [1, 5000]. 

pred = predict(Theta1, Theta2, X(m,:));
fprintf('\nNeural Network Prediction: %d (digit %d)\n', pred, mod(pred, 10));
% Display 
displayData(X(m, :));   
end 