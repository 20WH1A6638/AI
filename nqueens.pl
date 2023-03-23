queens(N, Qs) :- range(1, N, Us), queens(Us, [], Qs).
queens([], Qs, Qs).
queens(Us, Ps, Qs) :- select(Q, Us, Us1), \+ (attack(Q, Ps)), queens(Us1, [Q|Ps], Qs).

range(J, J, [J]).
range(I, J, [I|Ns]) :- I < J, I1 is I + 1, range(I1, J, Ns).

attack(Q, Qs) :- attack(Q, 1, Qs).
attack(X, N, [Y|_]) :- X =:= Y + N.
attack(X, N, [Y|_]) :- X =:= Y - N.
attack(X, N, [_|Ys]) :- N1 is N + 1, attack(X, N1, Ys).


OUTPUT


?- pwd.
% /home/cse/
true.

?- cd('/home/cse/Downloads/').
true.

?- pwd.
% /home/cse/Downloads/
true.

?- [nqueens].
true.

?- nqueens(4, Q).
Correct to: "queens(4,Q)"? 
Please answer 'y' or 'n'? yes
Q = [3, 1, 4, 2] 
