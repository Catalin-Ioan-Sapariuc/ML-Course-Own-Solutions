function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% We return a Gaussian similarity function with bandwith sigma below :

sim = 0;

dif = (x1-x2).^2; 
sumsquared = sum(dif); 

sim = exp( - sumsquared / (2 * sigma^2 ) ); 



% =============================================================
    
end
