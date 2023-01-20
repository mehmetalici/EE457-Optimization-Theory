## Problem Set II - Solution Analysis
In this homework, the optimization algorithms discussed in the lectures were implemented 
using MATLAB.  In problems 1 and 2, the minimizers of given f(x)’s were found via three 
different methods. Each method has its limitations and advantages while offering improvements 
over the previous methods. In problem 3, the root of given polynomial was obtained with the 
Secant method. This report will analyze the algorithms employed and compare its results. 

Newton Method did not 
converge due to f’’ is not >0 for everywhere. Also, bisection method was noticed to be faster than 
the Golden Section. 

### Analysis
#### Problem 1
In this problem the Golden Section, Fibonacci and Bisection method were employed to find the 
minimizer of the given 𝑓(𝑥)=𝑒(ସି௫) +2𝑙𝑛(𝑥). In the Golden Section method,  ρ was fixed to 
0.382. The Fibonacci method differs from that method in that the value of ρ differs on each 
subinterval. Also, the number of iterations is predetermined and based on the specified 
tolerance. In this method, only one function evaluation is required. Both methods converges in 
the same step size 12 with a 0.005 difference in the minimizer value. When both minimizers 
were plugged in the function, it outputs the same value 3.585. This is due to the uncertainties 
present and also to the nature of the methods.  
Finally the Bisection method, which relies on first order derivative and reduces the interval size 
by a factor of 0.5, was applied to find the minimizer. The algorithm converged to 4.898 after 9 
steps which is lower than both previous algorithms. The minimizer 4.898 outputted 3.585 which 
was the lowest value as same as the other two. Thus, this method was found to be the better 
than the other methods.

#### Problem 2
The Golden Section, Newton’s and Bisection methods were applied to find the minimizer of the 
next function.  With fixed ρ the Golden Section method converged in 10 steps to -1.306. The 
subsequent algorithm Newton’s Method works well only the f’’(x) > 0 everywhere as discussed 
in the lecture.  However, for the given f, f’’(x) < 0 for some x values. Thus, it may fail to converge. 
The method was utilized to see whether it converged to the minimizer. It determined the 
minimizer 1.977 which is different from the previous algorithm. When both minimizers were 
plugged into the f, 13.09 and -7.94 obtained for the Newton and Golden Search method, 
respectively. Thus, it is validated that the Newton’s Method converged to false state.  
Finally, the Bisection method were applied to the f. As seen from Problem 1, the algorithm 
converged faster than the Golden Section with 0.001 difference in the minimizer. It outputted 
the same value when plugged into the f, which is due to same reasons stated for the first 
problem.

#### Problem 3
The Secant method was applied in this problem to the given g, which is the first order derivative 
of a f. The root of g was found to be 0.59 after 7 intervals and validated by plugging it into g and 
noticing its value, which is 0. 
