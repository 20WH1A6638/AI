move(state(middle,onbox,middle,hasnot),
 grasp,
 state(middle,onbox,middle,has)).
move(state(P,onfloor,P,H),
 climb,
 state(P,onbox,P,H)).
move(state(P1,onfloor,P1,H),
 drag(P1,P2),
 state(P2,onfloor,P2,H)).
move(state(P1,onfloor,B,H),
 walk(P1,P2),
 state(P2,onfloor,B,H)).
canget(state(_,_,_,has)).
canget(State1) :- move(State1,_,State2), canget(State2).


OUTPUT

?- pwd.
% /home/cse/
true.

?- cd.
true.

?- cd('/home/cse/Downloads/').
true.

?- [banana2].
true.

?- canget(state(atdoor, onfloor, atwindow, hasnot)).
true .

?- trace.
true.

[trace]  ?- canget(state(atdoor, onfloor, atwindow, hasnot)).
   Call: (10) canget(state(atdoor, onfloor, atwindow, hasnot)) ? creep
   Call: (11) move(state(atdoor, onfloor, atwindow, hasnot), _24196, _24120) ? creep
   Exit: (11) move(state(atdoor, onfloor, atwindow, hasnot), walk(atdoor, _24940), state(_24940, onfloor, atwindow, hasnot)) ? creep
   Call: (11) canget(state(_24940, onfloor, atwindow, hasnot)) ? creep
   Call: (12) move(state(_24940, onfloor, atwindow, hasnot), _26648, _26572) ? creep
   Exit: (12) move(state(atwindow, onfloor, atwindow, hasnot), climb, state(atwindow, onbox, atwindow, hasnot)) ? creep
   Call: (12) canget(state(atwindow, onbox, atwindow, hasnot)) ? creep
   Call: (13) move(state(atwindow, onbox, atwindow, hasnot), _29094, _29018) ? creep
   Fail: (13) move(state(atwindow, onbox, atwindow, hasnot), _29908, _29018) ? creep
   Fail: (12) canget(state(atwindow, onbox, atwindow, hasnot)) ? creep
   Redo: (12) move(state(_24940, onfloor, atwindow, hasnot), _31528, _26572) ? creep
   Exit: (12) move(state(atwindow, onfloor, atwindow, hasnot), drag(atwindow, _32272), state(_32272, onfloor, _32272, hasnot)) ? creep
   Call: (12) canget(state(_32272, onfloor, _32272, hasnot)) ? creep
   Call: (13) move(state(_32272, onfloor, _32272, hasnot), _33980, _33904) ? creep
   Exit: (13) move(state(_32272, onfloor, _32272, hasnot), climb, state(_32272, onbox, _32272, hasnot)) ? creep
   Call: (13) canget(state(_32272, onbox, _32272, hasnot)) ? creep
   Call: (14) move(state(_32272, onbox, _32272, hasnot), _36426, _36350) ? creep
   Exit: (14) move(state(middle, onbox, middle, hasnot), grasp, state(middle, onbox, middle, has)) ? creep
   Call: (14) canget(state(middle, onbox, middle, has)) ? creep
   Exit: (14) canget(state(middle, onbox, middle, has)) ? creep
   Exit: (13) canget(state(middle, onbox, middle, hasnot)) ? creep
   Exit: (12) canget(state(middle, onfloor, middle, hasnot)) ? creep
   Exit: (11) canget(state(atwindow, onfloor, atwindow, hasnot)) ? creep
   Exit: (10) canget(state(atdoor, onfloor, atwindow, hasnot)) ? creep
true .
