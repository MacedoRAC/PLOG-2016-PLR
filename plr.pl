:- use_module(library(lists)).
:- use_module(library(clpfd)).
:- consult('data.pl').


fillDay(WeekDay, DaillySlots, AvailableSlots):-
	fillDayHelper(WeekDay, DaillySlots, 0, _, _, AvailableSlots, []).
	
fillDayHelper(_WeekDay, [], 0, _PrevTime, _PrevId, 0, _FilledSlots).
fillDayHelper(WeekDay, [H|T], 2, PrevTime, PrevId, AvailableSlots, FilledSlots):-
	H #= PrevId,
	AvailableSlotsN #= AvailableSlots - 1,
	Time #= PrevTime + 50,
	fillDayHelper(WeekDay, T, 1, Time, PrevId, AvailableSlotsN, [Time|FilledSlots]).
fillDayHelper(WeekDay, [H|T], 1, PrevTime, PrevId, AvailableSlots, FilledSlots):-
	H #= PrevId,
	AvailableSlotsN #= AvailableSlots - 1,
	Time #= PrevTime + 50,
	fillDayHelper(WeekDay, T, 0, _, _, AvailableSlotsN, [Time|FilledSlots]).
fillDayHelper(WeekDay, [H|T], 0, _PrevTime, _PrevId, AvailableSlots, FilledSlots):-
	usersVote(Id, WeekDay, Time, _Votes),
	tvShow(Id, _Name, Duration, _Cost, Restrictions),
	Duration #=< AvailableSlots,
	verifyRestrictions(Restrictions, Time, Duration, FilledSlots),
	H #= Id,
	DurationN #= Duration - 1,
	AvailableSlotsN #= AvailableSlots - 1,
	fillDayHelper(WeekDay, T, DurationN, Time, Id, AvailableSlotsN, [Time|FilledSlots]).
%testing without user vote
fillDayHelper(WeekDay, [H|T], 0, _PrevTime, _PrevId, AvailableSlots, FilledSlots):-
	tvShow(Id, _Name, Duration, _Cost, Restrictions),
	Duration #=< AvailableSlots,
	verifyRestrictions(Restrictions, Time, Duration, FilledSlots),
	H #= Id,
	DurationN #= Duration - 1,
	AvailableSlotsN #= AvailableSlots - 1,
	fillDayHelper(WeekDay, T, DurationN, Time, Id, AvailableSlotsN, [Time|FilledSlots]).
	
verifyRestrictions([], Time, Duration, FilledSlots):-
	not(member(Time, FilledSlots)),
	EndTime #= Time + Duration * 50,
	not(member(EndTime, FilledSlots)).
verifyRestrictions([H|T], Time, Duration, FilledSlots):-
	restriction(H, From, To),
	From #=< Time,
	To #>= Time + Duration * 50,
	verifyRestrictions(T, Time, Duration, FilledSlots).
	
	
verifySingleOcurrence([],_).
verifySingleOcurrence([H|T], WeekList):-
		tvShow(H, _, Duration, _, _),
		findall(_, member(H, WeekList), OcurrenceList),
		length(OcurrenceList, Count),
		Duration #= Count,
		verifySingleOcurrence(T, WeekList).

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
	fillDay(1, Sunday, Slots),
	fillDay(2, Monday, Slots),
	fillDay(3, Tuesday, Slots),
	fillDay(4, Wednesday, Slots),
	fillDay(5, Thursday, Slots),
	fillDay(6, Friday, Slots),
	fillDay(7, Saturday, Slots),
	verifySingleOcurrence(WeekList, WeekList),
	getTotalCost(WeekList, TotalCost),
	getTotalVotes(WeekList, TotalVotes),
	labeling([ff, enum, max(TotalVotes), min(TotalCost)], WeekList),
	Ratio = TotalVotes / TotalCost,
	write(WeekList),nl,write("cost: "),write(TotalCost),nl,write("votes: "),write(TotalVotes),nl,write("ratio: "),write(Ratio).