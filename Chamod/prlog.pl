#!/usr/bin/gprolog --consult-file

:- initialization(main).

fizzbuzz(N,'FizzBuzz') :- N mod 3 =:= 0, N mod 5 =:= 0.
fizzbuzz(N,'Fizz') :- N mod 3 =:= 0, N mod 5 =\= 0.
fizzbuzz(N,'Buzz') :- N mod 3 =\= 0, N mod 5 =:= 0.
fizzbuzz(N,N) :- N mod 3 =\= 0, N mod 5 =\= 0.

writeln(X) :- write(X) ,nl.
unit_test :-
  write('please enter number to test:'),
  read(X), nl,
  fizzbuzz(X, Output), nl,
  write(Output), nl.

main :-
    bagof(Num, between(1,1000,Num), Numlist),
    maplist(fizzbuzz,Numlist,FBList),
    maplist(writeln,FBList),
    unit_test(),
    halt.
