-module(what_if).
-export([oh_god/1, help_me/1]).

oh_god(N) ->
	if 	N =:= 2 -> might_succeed;
		true -> always_does  %% else!!
	end.

help_me(Animal) ->
	Talk = 	if 	Animal == cat  -> "meow";
				Animal == beef -> "mooo";
				Animal == dog  -> "bark";
				Animal == tree -> "bark";
				true -> "fgdadfgna"
			end,
	{Animal, "says " ++ Talk ++ "!"}.