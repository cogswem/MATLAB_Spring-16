%Essential MATLAB 5th Ed. 
%Chapter 3, exercise 3.7
%Maddie C. 4/10/2016
%
%Model the motion of a damped harmonic oscillator with spring coefficient,
%k=1
%
R=0:.01:2;  %define the damping coefficient, R
t=0:.05:10; %set the period of oscillation
k=1;        %define the spring constant
w0=sqrt(k); %k is the square of the natural frequency of undamped oscillation (omega naught)
w1=sqrt(w0^2-R.^2./4); %define the natural frequency of oscillation with damping (resistance to motion)
y=exp(-R.*t/2).*sin(w1.*t); %The small amplitude oscillation of a unit mass attached to a spring
plot(t,y), grid
