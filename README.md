# ML-Course
These are my (private) solutions for the Machine Learning Course offered on Coursera and at Stanford and taught by Prof. Ng . 

For this week's exercise, we use a SVM algorithm to:  
-- create a linear boundary (large margin classifier) and a non-linear boundary (large margin classifier) using Gaussian kernels. 
The data and the boundaries are visualized nicely. We also find the optimal C and sigma^2 from a set sequence of values (8 for each), 
in the sense that these particular values of C and sigma^2 give the lowest CV error /
-- for the second part of the exercise, we train a spam classifier, usinf a vocabulary from https://spamassassin.apache.org/old/publiccorpus/ 
(Spam Assassin Public corpus). First, sample emails are cleaned and transformed into x-features (with 1899 components, based on the presence 
or absence of key words found in the spam vocabulary. Then , an SVM classifier is trained on these x - features, and tested on test emails. 
A test accuracy of 98.5% has been obtained. 

