%Essential MATLAB, by Valentine and Hahn
%Chapter 9 problem 1
%Maddie C...........5/16/16
%Draw a graph of the population of the USA from 1790 to 2000, using the
%model: P(t)=197,273,000/(1+e^(-0.03134(t-1913.25))), where t is the date
%in years....then superimpose given populations for decade intervals
%between 1790 and 1950.
t=1790:1:2000;
P(t)=197273000./(1+exp(-0.03134.*(t-1913.25)));
plot(t,P(t))
xlabel('year')
ylabel('Population size')
hold on
N=1790:10:1950;
P=1000.*[3929 5308 7240 9638 12866 17069 23192 31443 38558 50156 62948 75995 91972 105711 122775 131669 150697];
plot(N,P,'o')
hold off