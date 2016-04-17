%Essential MATLAB by Hahn and Valentine
%Chapter 5 Exercise 5.7
%Maddie C......................4/16/16
%
%The electricity accounts of residents in a very small rural community are
%calculated as follows:
%   -if 500 units or less are used the cost is 2 cents per unit;
%   -if more than 500, but not more than 1000 units are used, the cost is
%   $10 for the first 500 units, and then 5 cents for every unit in excess
%   of 500;
%   -if more than 1000 units are used, the cost is $35 for the first 1000
%   units plus 10 cents for every unit in excess of 1000;
%   -in addition, a basic service fee of $5 is charged, no matter how much
%   electricity is used.
%   
%The five residents use the following amounts (units) of electricity in a
%certain month: 200, 500, 700, 1000, 1500. Write a program which uses
%logical vectors to calculate how much they must pay. Display the results
%in two columns: one for the electricity used in each case, and one for
%amount owed.
%
n=[200 500 700 1000 1500];   %The units of electricity residents use in a certain month
cost=5.*(n<=500)+0.02.*n.*(n<=500);
cost=cost+15.*(n>500 & n<=1000)+0.05.*((n-500).*(n>500 & n<=1000));
cost=cost+40.*(n>1000)+0.1.*((n-1000).*(n>1000));
disp(['  Electricity      ',' Cost'])
disp([n' cost'])