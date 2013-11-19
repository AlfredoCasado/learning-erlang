-module(guards).
-export([old/1, wrong_age/1]).

old(X) when X >= 18 -> true;
old(_) -> false.

wrong_age(X) when X >= 16, X =< 100 -> true;
wrong_age(_) -> false.