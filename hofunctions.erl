-module(hofunctions).
-compile(export_all).

one() -> 1.
two() -> 2.

add(A,B) -> A() + B().

map(_,[]) -> [];
map(F, [H|T]) -> [F(H)|map(F, T)].

increment(N) -> N+1.
decrement(N) -> N-1.

filter(Selector, L) -> lists:reverse(filter(Selector, L, [])).

filter(_,[],Acc) -> Acc;
filter(Selector,[H|T],Acc) -> 
	case Selector(H) of
		true -> filter(Selector, T, [H|Acc]);
		false -> filter(Selector, T, Acc)
	end.
