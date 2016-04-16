%MATLAB Essentials by Hahn and Valentine
%
%Chapter 5 exercise 5.1
%Maddie C.......4/16/16
%
% Determine the values of the following expressions yourself before
% checking your answers using MATLAB. You may need to consult table 5.3.
%
%(a) 1&-1: The & operator tells Matlab to consider whether each variable is
%          true or false. For this to be true, both statements separated by
%          & must be true. Otherwise the whole thing is false if just one is false.
%          We are not defining any variables, but stating nonzero values. 
%          Since both are nonzero, the statement is true. MATLAB returns 1.
1&-1
%(b) 13 & ~(-6): The tilde (~) means 'not: ___' or the opposite of whatever it's operating
%          on. So ~(#) is 0. Tilde has precedence over &, so Matlab
%          considers that term. Since we have one nonzero & one zero term,
%          the whole statement is false: Matlab returns 0.
13&~(-6)
%(c) 0<-2|0: The or statement considers whether 0<-2 or 0 are true statements. 
%          0 is definitely not less than -2, so that is false. However
%          because it is an OR statement, just one side can be true for the
%          entire statement to be true. However, 0 is definitely not
%          nonzero, so it is also false. Matlab returns 0.
0<-2|0
%(d) ~[1 0 2]*3: The tilde acts on the array producing the opposite.
%          Given ~[1 0 2] Matlab reads [0 1 0]. Then it multiplies to produce
%          a new array [0 3 0].
~[1 0 2]*3
%(e) 0<=0.2<=0.4: Matlab reads the following as 0 is less than or equal to 0.2
%          which is true, so it returns 1 for (0<=.2). Then it consideres
%          whether 1<=0.4, which is false. So Matlab returns 0 for the
%          whole statement.
0<=.2<=.4
%(f) 5>4>3: Matlab reads that 5 is greater than 4, which is true so Matlab
%          returns 1. So because there is no precedence of operators, Matlab reads
%          the statement left to right. The first part was true, 1, but 1
%          is then not greater than 3, so false. Matlab returns 0 for the
%          whole statement.
5>4>3
%(g) 2>3&1: The operator > has precedence over &, so Matlab reads that term
%           first. 2>3 is false, so Matlab returns 0. Now we have the
%           statement: 0&1, which reads as a zero & nonzero number, so the
%           whole statement is false. Matlab returns 0.
2>3&1
