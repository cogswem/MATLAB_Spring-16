%Essential MATLAB by Hahn and Valentine
%
%Chapter 4 Exercise 4.1
%Maddie C
%4/15/16
%
%Write some MATLAB statements which will:
%   (a) find the length C of the hypotenuse of a right-angle triangle in
%   terms of the lengths A and B of the other two sides;
%
A=input('What is the height of a right triangle?');
B=input('What is the length of a right triangle?');
C=sqrt(A^2+B^2);
disp(['If height= ',num2str(A),' and length= ',num2str(B),', then the hypotenuse= ',num2str(C)])
%
%Find the length C of a side of a triangle given the lengths A and B of the
%other two sides and the size in degrees of the included angle theta, using
%the cosine rule: C^2=A^2+B^2-2ABcos=(theta).
%
A=input('What is the length of side A?');
B=input('What is the length of side B?');
theta1=input('What is the angle between A and B (in degrees)?');
theta=theta1*pi/180;
C2=A^2+B^2-2*A*B*cos(theta);
C=sqrt(C2);
theta2=atan(B/A);
theta3=atan(A/B);
disp(['If side A= ',num2str(A),', side B= ',num2str(B),...
    ' and the angle between A & B= ',num2str(theta),' then side C= ',num2str(C)])
