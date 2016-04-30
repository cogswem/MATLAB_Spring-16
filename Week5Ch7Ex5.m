%Essential MATLAB by Hahn and Valentine
%Chapter 7, problem 5
%Maddie C.....................4/29/16
%
%Write your own MATLAB function to compute the exponential function
%directly from the Taylor series:
%
%   e^x= 1 +x +x^2/2! +x^3/3! +....
%
%The series should end when the last term is less than 1E-6. Test your
%function against the built-in function exp, but be careful not to make x
%too large -this could cause a rounding error.
%

x=input('Choose x, to approximate e^x;');
n=0;                
r=1;

while r>1E-6 & n<20     %Set boundaries of while loop for best approximation
    n=n+1;              %increase n by 1 for each loop
    r=r+(x^n)/factorial(n); %r builds upon the last r until boundary is met
end

disp(r)
