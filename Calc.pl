calc :- X is 100 + 200,write('100 + 200 is'),write(X),nl,
Y is 400 - 150,write('400 - 150 is'),write(Y),nl,
Z is 10 * 300,write('10 * 300 is '),write(Z),nl,
A is 100 / 30,write('100 / 30 is '),write(A),nl,
B is 100 // 30,write('100 // 30 is '),write(B),nl,
C is 100 ** 2,write('100 ** 2 is '),write(C),nl,
D is 100 mod 30,write('100 mod 30 is '),write(D),nl.


OUTPUT

?- pwd.
% /home/cse/Downloads/
true.

?- [calc].
true.

?- calc.
100 + 200 is300
400 - 150 is250
10 * 300 is 3000
100 / 30 is 3.3333333333333335
100 // 30 is 3
100 ** 2 is 10000
100 mod 30 is 10
true.
