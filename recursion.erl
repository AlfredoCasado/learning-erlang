-module(recursion).
-export([len/1, tail_len/1, duplicate/2, tail_duplicate/2, sublist/2, tail_sublist/2]).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

tail_len(A) -> tail_len(A, 0). 

tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T,Acc+1).

duplicate(0, _) -> [];
duplicate(N, ITEM) -> [ITEM | duplicate(N-1, ITEM)].

tail_duplicate(N,ITEM) -> tail_duplicate(N,ITEM, []).

tail_duplicate(0,_,Acc) -> Acc;
tail_duplicate(N,ITEM,Acc) -> tail_duplicate(N-1, ITEM, [ITEM|Acc]). 

sublist(_,0) -> [];
sublist([], _) -> [];
sublist([H|T],N) -> [H|sublist(T, N-1)].

tail_sublist(L,N) -> tail_sublist(L,N,[]).

tail_sublist(_,0,Acc) -> lists:reverse(Acc);
tail_sublist([H|T], N, Acc) -> tail_sublist(T, N-1, [H|Acc]).