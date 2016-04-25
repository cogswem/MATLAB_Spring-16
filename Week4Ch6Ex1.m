%Matlan Essentials by Hahn and Valentine
%Chapter 6, exercise 1
%By, Maddie C....................4/25/16
%
%Set up the 3X3 matrix a. write some command-line statements to perform the
%following operations on a:
%
%(a) interchange columns 2 and 3;
%(b) add a fourth column (of 0s);
%(c) insert a row of 1s as the new second row of a (i.e., move the current
%second and third rows down);
%(d) remove the second column.
%

a=[5 3 7;8 2 3; 1 5 7];
%(a) interchange columns 2 and 3;
fliplr(a(:,[2 3]))
%(b) add a fourth column (of 0s);
a(3,4)=0
%(c) insert a row of 1s as the new second row of a;
a(1:3,2)=ones
%(d) remove the second column.
a(:,2)=[ ]