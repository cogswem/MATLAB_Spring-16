%Essentials MATLAB by Valentine and Hahn
%Chapter 6, problem 2
%Compute the limiting probabilities for the student in section 6.5 when he 
%starts at each of the remaining intersections in turn, and confirm that 
%the closer he starts to the cafe, the more likely he is to end up there.
%Compute p^50 directly. Can you see the limiting probabilities in the 
%first row?
%
n=6;
P=zeros(n);         %all elements set to zero

for i=3:6
    P(i,i-1)=2/3;
    P(i-2,i-1)=1/3;
end

P(1,1)=1;
P(6,6)=1;
x=[0 0 0 1 0 0]';   %remember x must be a column vector!

for t=1:50
    x=P*x;
    disp([t x'])
end

P^50
