%Essential MATLAB, by Valentine and Hahn
%Chapter 9 problem 5
%Maddie C.      5/14/16
%
%The equation of an ellipse in polar co-ordinates is given by:
%r=a(1-e^2)/(1-ecostheta), where a is the semi-major axis and e is the 
%eccentricity, if one focus is at the origin, 
%and the semi-major axis lies on the x-axis.
%Halley's Comet moves in an elliptical orbit
%about the sun (at one focus) with a semi-major axis of 17.9 A.U.
%(an astronomical unit, mean distance of the earth from the sun: 149.6
%million km)
%The eccentricity of the orbit is 0.967276. Write a program which draws the
%orbit of Halley's Comet and the earth (assuming the earth is circular).

a=17.9; %define the semi-major axis of orbit
e=0.967276; %define orbit eccentricity
theta=0:pi/200:2*pi; %complete revolution in radians
r=a*(1-e^2)./(1-e.*cos(theta)); %equation of an ellipse, find r of theta
x=r.*cos(theta);
y=r.*sin(theta);
comet(x,y); %plot comet path
hold on
r2=(1-e^2)./(1-e*cos(theta));
x2=r2.*cos(theta);
y2=r2.*sin(theta);
plot(x2,y2)
hold off
