# Exercise 3 -- Week 4 Description and Solutions
This exercise has two parts:
-- in part 1 I implemented an one vs all logistic regression algorithm to recognize hand-written digits (from 1 to 10). 
First, we train the algorithm on 5000 data points (images) in order to obtain 10 hypotheses (in a one vs all fashion). 
Then we predict the correct output by chosing the most likely hypothesis value for a given x (set of features), that is the theta 
which maximizes Prob( y / x) . This output is verified vs the test data and it produces an accuracy of ~ 95%. 
-- in part 2, I create a one hidden layer Neural Network to produce a nonlinear prediction of the same data. The weights of each neuron are supposed to be known . This solution (although apparently simpler) produces a 97.5% accuracy. 
