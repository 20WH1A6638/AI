move(1,X,Y,_) :- write('Move top disk from '), write(X), write(' to '), write(Y), nl.
move(N,X,Y,Z) :- N>1, M is N - 1, move(M, X, Z, Y), move(1, X, Y,_), move(M,Z,Y,X) .
 
 OUTPUT
 
 ?- pwd.
% /home/cse/
true.

?- cd('/home/cse/Downloads').
true.

?- [toh].
true.

?- move(3,'a','b','c').
Move top disk from a to b
Move top disk from a to c
Move top disk from b to c
Move top disk from a to b
Move top disk from c to a
Move top disk from c to b
Move top disk from a to b
true .
