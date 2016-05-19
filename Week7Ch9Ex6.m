%Essential MATLAB by Hahn and Valentine
%Chapter 9 Problem 6
%
%A very interesting iterative relationship that has been studied a lot
%recently is defined by:y(k+1)=ry(k)(1-y(k))
%(this is a discrete form of the well-known logistic model). Given yo and
%r, successive yk's may be computed very easily, e.g., if yo=0.2 and r=1,
%then y1=0.16, y2=0.1334, and so on.
%This formula is often used to model population growth in cases where the
%growth is not unlimited, but is restricted by shortage of food, living
%area, amongst other things.
%Yk exhibits fascinating behavior, known as mathematical chaos, for values
%of r between 3 and 4 (independent of yo). Write a program which plots yk
%against k (as individual points).
%
y(1)=0.2;   %choose initial y value
r=3.5766;     %choose r value
for k=1:600
    y(k+1)=r*y(k)*(1-y(k));
end
plot(y, 'o')