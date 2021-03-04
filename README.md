# ML-Course
These are my (private) solutions for the Machine Learning Course offered on Coursera and at Stanford and taught by Prof. Ng . 

This week's set of exercises has two parts: 
1. An anomaly detection algorithm based on the Gaussian metric: given a dataset X, we first compute its multi-variate Gaussian distribution p(X). 
   Then we declare a value X(i,j) to be an outlier if p(X(i,j)) < epsilon, where epsilon is a (small) parameter to be chosen. 
   We choose the best epsilon by performing a cross-validation runs with various epsilon values (in the range [pmin , pmax] and chose that epsilon 
   which maximizes the F1 score. 
2. For the second part of the project, we developed a simple recomender (movie) system based on a given set of movies / user recommendations. Some of the pairs (movies/ music) may be missing, which is indicated with an extra tag (R(i,j)=0) . Based on this data, we find X_i (feature vectors for movie i) and Theta_k (parameter vectors for user k) which minimizes a linear style regularized cost function. 
