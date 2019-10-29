#!/usr/bin/gprolog --consult-file

:- initialization(main).

FizzBuzz(Number,'FizzBuzz') :- N mod 3 =:= 0, N mod 5 =:= 0.
FizzBuzz(Number,'Fizz') :- N mod 3 =:= 0, N mod 5 =\= 0.
FizzBuzz(Number,'Buzz') :- N mod 3 =\= 0, N mod 5 =:= 0.
FizzBuzz(Number, N) :- N mod 3 =\= 0, N mod 5 =\= 0.

WriteLine(X) :- write(X) ,nl.
test :-
  write('please enter number to test:'),
  read(X), nl,
  fizzbuzz(X, Output), nl,
  write(Output), nl.

main :-
    bagof(Num, between(1,1000,Num), Numlist),
    maplist(FizzBuzz,Numlist,FizzBuzzList),
    maplist(WriteLine, FizzBuzzList),
    test().
