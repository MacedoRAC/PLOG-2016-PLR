:- use_module(library(lists)).
:- use_module(library(clpfd)).
:- consult('data.pl').

restrictWeek(Slots, WeekList, TotalCost, TotalVotes):-
	length(Sunday, Slots),
	length(Monday, Slots),
	length(Tuesday, Slots),
	length(Wednesday, Slots),
	length(Thursday, Slots),
	length(Friday, Slots),
	length(Saturday, Slots),
	append([Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday], WeekList),
	findall(Duration, tvShow(_,_,Duration,_,_), DList),
	findall(Cost, tvShow(_,_,_,Cost,_), CList),
	findall(Vote, usersVote(_,_,_,Vote), VList),
	restrictDay(Sunday, DList, Slots, _, 0),
	restrictDay(Monday, DList, Slots, _, 0),
	restrictDay(Tuesday, DList, Slots, _, 0),
	restrictDay(Wednesday, DList, Slots, _, 0),
	restrictDay(Thursday, DList, Slots, _, 0),
	restrictDay(Friday, DList, Slots, _, 0),
	restrictDay(Saturday, DList, Slots, _, 0),
	restrictSingleOcurrence(WeekList, WeekList, DList),
	sumCostAndVotes(WeekList, CList, VList, TotalCost, TotalVotes).
	
restrictDay([],_,_,_,_).
restrictDay([H|T], DList, AvailableSlots, _, 0):-
	element(H, DList, D),
	D #=< AvailableSlots,
	AvailableSlotsN #= AvailableSlots - D,
	SlotsLeftFromThisShow #= D - 1,
	restrictDay(T, DList, AvailableSlotsN, H, SlotsLeftFromThisShow).
restrictDay([H|T], DList, AvailableSlots, H, SlotsLeftFromPreviousShow):-
	SlotsLeftFromThisShow #= SlotsLeftFromPreviousShow - 1,
	restrictDay(T, DList, AvailableSlots, H, SlotsLeftFromThisShow).
	
restrictSingleOcurrence([],_,_).
restrictSingleOcurrence([H|T], WeekList, DList):-
	element(H, DList, D),
	occurrence(H, WeekList, D),
	restrictSingleOcurrence(T, WeekList, DList).
	
occurrence(_, [], 0).
occurrence(X, [Y|L], N) :-
	X #= Y #<==> B ,
	N #= M+B,
	occurrence(X, L, M).
	
sumCostAndVotes([],_,_,0,0).
sumCostAndVotes([H|T],CList, VList, TotalCost, TotalVotes):-
	element(H, CList, Cost),
	element(H, VList, Votes),
	TotalCost #= TotalCostP + Cost,
	TotalVotes #= TotalVotesP + Votes,
	sumCostAndVotes(T, CList, VList, TotalCostP, TotalVotesP).
	
run(Slots):-
	0 < Slots, Slots < 9,
	% initiate statistics
	statistics(walltime, _),
	restrictWeek(Slots, WeekList, TotalCost, TotalVotes),
	WeekList ins 1..60,
	TotalVotes in 1..9999,
	TotalCost in 1..9999,
	append([TotalCost, TotalVotes], WeekList, Vars),
	labeling([ffc, bisect, min(TotalCost), max(TotalVotes)], Vars),
	% Obtain and print statistics
	statistics(walltime, [_, Elapsed | _]),
	format('Time taken to find solution: ~3d seconds', Elapsed), nl,
	%print results
	write(WeekList),nl,write("cost: "),write(TotalCost),nl,write("votes: "),write(TotalVotes).