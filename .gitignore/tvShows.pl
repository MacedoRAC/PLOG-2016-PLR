%MAXIMIZAR AUDIENCIAS MINIMIZANDO O CUSTO DAS SERIES

%data
%tvShow(Id, Duration, Cost)
%statistic(TvShowId, Slot)

%restrictions
%

calendar(Slots, NumTvShows):-
	seedTvShows(NumTvShows, TvShows),
	seedStatistics(Slots, TvShows, Statistics),
	length(L, Slots),
	domain(L, 1, NumTvShows),
	%restrições
	sumDurations(L) #= Slots*30,
	calcCostRatingRatio(L, Ratio),
	labeling(maximize(Ratio), L).