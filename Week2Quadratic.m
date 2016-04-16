%Essential MATLAB 5th Ed. 
%Chapter 3, exercise 3.5
%4/10/2016
%
%Write a script for the general solution to the quadratic equation
%ax^2+bx+c=0. The script should be able to handle all possible values of
%the data a, b, and c. Try it out on the following values:
%
%(a) 1,1,1 (complex roots)
%(b) 2,4,2 (equal roots of -1.0)
%(c) 2,2,-12 (roots of 2.0 and -3.0)
%
%Equation: a*x^2+b*x+c=0
%Input: a,b,c
%Output: x=[x1 x2], the two solutions of this equation
%
a=input('What is a?');
b=input('What is b?');
c=input('What is c?');

if a==0 & b==0 & c==0 
    disp(' ')
    disp('Solution is indeterminate')
elseif a==0 & b==0
        disp(' ')
        disp('There is no solution')
elseif a==0
    disp(' ')
    disp('Only one root: equation is linear')
    disp('x')
    x1=-c/b;
    x2=NaN;
elseif b^2<4*a*c 
    disp(' ')
    disp('x1, x2 are complex roots')
    disp('x1 x2')
    x1=(-b+sqrt(b^2-4*a*c))/(2*a);
    x2=(-b-sqrt(b^2-4*a*c))/(2*a);
elseif b^2==4*a*c 
    x1=-b/(2*a);
    x2=x1;
    disp('equal roots')
    disp('x1 x2')
else
    x1=(-b+sqrt(b^2-4*a*c))/(2*a);
    x2=(-b-sqrt(b^2-4*a*c))/(2*a);
    disp('x1 x2')
end
if a==0 & b==0 & c==0
elseif a==0 & b==0
else
    disp([x1 x2]);
end
