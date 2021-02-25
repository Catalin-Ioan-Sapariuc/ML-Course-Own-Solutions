# ML-Course
These are my (private) solutions for the Machine Learning Course offered on Coursera and at Stanford and taught by Prof. Ng . 

In this week's exercises I implemented two algorithms for unsupervised ML: 
1. K-means clustering : given a data set and a choice of K (the number of clusters), we : 
-- first randomly choose K intial centroids (seeds); 
b) assign each point to the closest of K centroids (by looping over the data points). This assignment is stored in a vector idx of size m X 1 (m is the number of examples); 
c) move each of the K centroids to the new location (center of mass) given by the average of the points in the given cluster 
Repeat steps b) and c) until convergence (no points change cluster). 
2. PCA algorithm for dimenion reduction: we choose a number of principal components of a given data set, and calculate the principal components of that data ( as z = Ureduced'*x) ; then the reduced data is the projection of each point x_i (i=1..m) on z : x_approx= Ureduced*z ;  
