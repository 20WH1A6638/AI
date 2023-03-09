on(floor,monkey).
on(floor,box).
in(room,monkey).
in(room,box).
in(room,banana).
at(ceiling,banana).

strong(monkey).
grasp(monkey).
climb(monkey,box).

push1(monkey,box) :- strong(monkey).
under(banana,box) :- push1(monkey,box).
canreach(banana,monkey) :- at(ceiling,banana), under(banana,box), climb(monkey,box).
canget(banana,monkey) :- canreach(banana,monkey), grasp(monkey).

OUTPUT

?- [monkey].
true.

?- canget(banana,monkey).
true.

?- trace.
true.

[trace]  ?- canget(banana,monkey).
   Call: (10) canget(banana, monkey) ? creep
   Call: (11) canreach(banana, monkey) ? creep
   Call: (12) at(ceiling, banana) ? creep
   Exit: (12) at(ceiling, banana) ? creep
   Call: (12) under(banana, box) ? creep
   Call: (13) push1(monkey, box) ? creep
   Call: (14) strong(monkey) ? creep
   Exit: (14) strong(monkey) ? creep
   Exit: (13) push1(monkey, box) ? creep
   Exit: (12) under(banana, box) ? creep
   Call: (12) climb(monkey, box) ? creep
   Exit: (12) climb(monkey, box) ? creep
   Exit: (11) canreach(banana, monkey) ? creep
   Call: (11) grasp(monkey) ? creep
   Exit: (11) grasp(monkey) ? creep
   Exit: (10) canget(banana, monkey) ? creep
true.
