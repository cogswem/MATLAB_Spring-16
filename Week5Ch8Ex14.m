%Essential MATLAB by Valentine and Hahn
%Chapter 8 exercise 14
%Maddie C........................4/30/16
%
%When a resistor (R), capacitor (C), and battery (V) are connected in
%series, a charge Q vuilds on the capacitor according to the formula:
%Q(t)=CV(1-exp(-t/(RC)) if there is no charge on the capacitor at time t=0.
%The problem is to monitor the charge on the capacitor every 0.1s in order
%to detect when it reaches a level of 8 units of charge, given that V=9,
%R=4, and C=1. Write a program which displays the time and charge every
%0.1s until the charge first exceeds 8 units (i.e., the last charge
%displayed must exceed 8). Once you have done this, rewrite the program to
%display the charge only while it is strictly less than 8 units.
%
V=9;
R=4;
C=1;
Q=0;
t=0;
disp('         Time        Charge')
while Q <8
    Q=Q+C*V*(1-exp(-t/(R*C)));
    t=t+0.1;
    disp([t Q])
end

%rewrite the program to display the charge only while it is strictly less
%than 8 units:
V=9;
R=4;
C=1;
Q=0;
t=0;
disp('         Time        Charge')
while Q <8
    disp([t Q])     %All that changes is disp([""]) is the first statement in the while loop
    Q=Q+C*V*(1-exp(-t/(R*C)));
    t=t+0.1;
end