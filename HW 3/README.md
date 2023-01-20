## Problem Set 3 - Solution Analysis

**Note**: You can find the questions in the file `./HW3 Problem Set.pdf`. 

In this homework, I implemented and evaluated the performances of several iterative algorithmns 
for the Rosenbrock function.  

### Problem 1
The results were as expected. For alpha fixed to 1e-3, the algorithm diverges since the step size 
is big and it overshoots the minimum. When alpha fixed to a lower value it converges to 1 which is 
very close to the minimum. 

### Problem 2
The steepest descent algorithm was implemented by finding the minimum alpha in each 
interval. This is computationally expensive as the minimum alpha is found by applying secant 
method. I failed to implement the algorithm. 

### Problem 3
Since applying secant method was expensive, fixing the alpha by meeting the condition of 
Armijo was the optimal solution. This is less accurate than the secant but surely faster. 

### Problem 4
Armijo-Goldstein conditions were more restrictive than the previous condition since it bounds 
alpha by two sides. Thus, this meant a better alpha and faster convergence. 

### Problem 5
The Newton’s Method was applied by calculating the Hessian. The inverse of Hessian might not 
be always avaliable and it is expensive.  

### Problem 6
The algorithm uses the secant method and better alpha values was obtained. Thus, this meant 
a convergence in lower iterations and faster convergence. 

### Problem 7
Armijo conditions was used for the line search and it speeded up the convergence. 

### Problem 8
Two bounds were used by Armijo-Goldstein for the alpha value and we had faster convergence.   