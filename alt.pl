:- use_module(library(lists)).
:- use_module(library(clpfd)).
:- consult('data.pl').


daillyRestriction(Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, AvailableSlots):-
	daillyRestrictionHelper(1, Sunday, 0, _, _, AvailableSlots, [], []),
	daillyRestrictionHelper(2, Monday, 0, _, _, AvailableSlots, [], []),
	daillyRestrictionHelper(3, Tuesday, 0, _, _, AvailableSlots, [], []),
	daillyRestrictionHelper(4, Wednesday, 0, _, _, AvailableSlots, [], []),
	daillyRestrictionHelper(5, Thursday, 0, _, _, AvailableSlots, [], []),
	daillyRestrictionHelper(6, Friday, 0, _, _, AvailableSlots, [], []),
	daillyRestrictionHelper(7, Saturday, 0, _, _, AvailableSlots, [], []).
	
daillyRestrictionHelper(_WeekDay, [], 0, _PrevTime, _PrevId, 0, _FilledSlots).
daillyRestrictionHelper(WeekDay, [H|T], 2, PrevTime, PrevId, AvailableSlots, FilledSlots):-
	H #= PrevId,
	AvailableSlotsN #= AvailableSlots - 1,
	Time #= PrevTime + 50,
	daillyRestrictionHelper(WeekDay, T, 1, Time, PrevId, AvailableSlotsN, [Time|FilledSlots]).
daillyRestrictionHelper(WeekDay, [H|T], 1, PrevTime, PrevId, AvailableSlots, FilledSlots):-
	H #= PrevId,
	AvailableSlotsN #= AvailableSlots - 1,
	Time #= PrevTime + 50,
	daillyRestrictionHelper(WeekDay, T, 0, _, _, AvailableSlotsN, [Time|FilledSlots]).
daillyRestrictionHelper(WeekDay, [H|T], 0, _PrevTime, _PrevId, AvailableSlots, FilledSlots, TakenShows):-
	usersVote(Id, WeekDay, Time, _Votes),
	not(member(Id, TakenShows)),
	tvShow(Id, _Name, Duration, _Cost, Restrictions),
	Duration #=< AvailableSlots,
	verifyRestrictions(Restrictions, Time, Duration, FilledSlots),
	H #= Id,
	DurationN #= Duration - 1,
	AvailableSlotsN #= AvailableSlots - 1,
	daillyRestrictionHelper(WeekDay, T, DurationN, Time, Id, AvailableSlotsN, [Time|FilledSlots], [Id|TakenShows]).
%testing without user vote
daillyRestrictionHelper(WeekDay, [H|T], 0, _PrevTime, _PrevId, AvailableSlots, FilledSlots, TakenShows):-
	not(member(Id, TakenShows)),
	tvShow(Id, _Name, Duration, _Cost, Restrictions),
	Duration #=< AvailableSlots,
	verifyRestrictions(Restrictions, Time, Duration, FilledSlots),
	H #= Id,
	DurationN #= Duration - 1,
	AvailableSlotsN #= AvailableSlots - 1,
	daillyRestrictionHelper(WeekDay, T, DurationN, Time, Id, AvailableSlotsN, [Time|FilledSlots], [Id|TakenShows]).
	
verifyRestrictions([], Time, Duration, FilledSlots):-
	not(member(Time, FilledSlots)),
	EndTime #= Time + Duration * 50,
	not(member(EndTime, FilledSlots)).
verifyRestrictions([H|T], Time, Duration, FilledSlots):-
	restriction(H, From, To),
	From #=< Time,
	To #>= Time + Duration * 50,
	verifyRestrictions(T, Time, Duration, FilledSlots).

getTotalCost([], TotalCost):-
	TotalCost #= 0.
getTotalCost([H|T], TotalCost):-
	getTotalCost(T, TotalCost1),
	tvShow(H, _, _, Cost, _),
	TotalCost #= TotalCost1 + Cost.
	
getTotalVotes([], TotalVotes):-
	TotalVotes #= 0.
getTotalVotes([H|T], TotalVotes):-
	getTotalVotes(T, TotalVotes1),
	usersVote(H, _, _, Votes),
	TotalVotes #= TotalVotes1 + Votes.
	
run(Slots):-
	length(Sunday, Slots),
	length(Monday, Slots),
	length(Tuesday, Slots),
	length(Wednesday, Slots),
	length(Thursday, Slots),
	length(Friday, Slots),
	length(Saturday, Slots),
	append([Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday], WeekList), 
	WeekList ins 1..60,
	TotalVotes in 1..10000,
	TotalCost in 1..10000,
	daillyRestriction(Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Slots),
	getTotalCost(WeekList, TotalCost),
	getTotalVotes(WeekList, TotalVotes),
	labeling([ffc, min(TotalCost), max(TotalVotes)], [TotalCost, TotalVotes, WeekList]),
	write(WeekList).