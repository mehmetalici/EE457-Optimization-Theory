## Problem Set 4 - Solution Analysis

**Note**: You can find the problem set in `./HW4 - Problem Set.pdf`.

This homework is basically constituted by two parts. In the first part, performances of several 
iterative algorithms for minimizing the Rosenbrock function were evaluated. Then, for the 
given dataset, a curve and a line were fitted.

### Analysis
#### Problem 1
Firstly, the conjugate direction algorithm was implemented and the search is done on the 
conjugate paths. The function given is nonquadratic so use of Q was expensive. Also, the 
solution was not necessarily reached in n steps. In modified algorithm, we computed the 
optimal alpha in every iteration as in the steepest descent algorithm. This reduced the speed of 
the algorithm.   
Secondly, we applied the Quasi-Newton algorithm with 3 different correction formulas for 
updating H(k+1). All formulas have the same form H(k+1) = H(k) + U(k). Comparing the 
results, The DFP algorithm performed better than the rank-1 correction formula. However, the 
best performance was obtained with BFGS algorithm.  

#### Problem 2
In this problem, two randomized search algorithms were employed. There was no need for 
gradients and we quickly obtained satisfactory solution.  
Firstly, in naïve approach, the algorithm had the descent property. However, results showed 
that it get stuck in the local minimum for a short range of neighboorhood. When the range is 
expanded, the algorithm resulted in a close vicinity of global minimum.  
Then, by adding a probability term I was expecting to obtain better results since it can climb 
out of local minimum. However, I obtained very likely results of the first approach. It may due 
to that the alpha is not big enough to jump from the local minimum. 

#### Problem 3
In this problem, the RLS algorithm performed unsatisfactory results compared to the LS 
solution. The algorithm was double-checked and found to be correct but the cost function 
resulted hugely compared with that obtained by the LS solution method. One probable cause 
of the error might be that RLS required much more data to approximate the trend. LS Solution, 
however, reduced the cost almost to zero. 

#### Problem 4
In the first part, we used Gauss – Newton method to approximate the data with a sine curve. 
The algorithm was employed for various initial points and some of them did not function well. 
The cause of this error is that for certain initial points, J’ * J wasn’t invertible and it caused an 
unsatisfactory approximation.     
Secondly, when we used Levenberg algorithm, we applied a small multiple of identity and this 
made J’ * J invertible. Thus, for the initial points where Gauss – Newton failed, we were 
achieved a very satisfactory approximation.

