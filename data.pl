:- use_module(library(lists)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%             DATABASE          %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%tvShow(Id, Name, Duration, AquisionCost, [Restrictions])
tvShow(1, 'People of Earth',2, 100, [1]).
tvShow(2, 'Insecure', 2, 130, [2]).
tvShow(3, 'Westworld', 3, 220, [3]).
tvShow(4, 'Black Mirror', 2, 180, [4]).
tvShow(5, 'Vikings',1, 90, [5]).
tvShow(6, 'The Walking Dead', 3, 140, [6]).
tvShow(7, 'Van Helsing',1, 75, [7]).
tvShow(8, 'Good Behavior',2, 105, [8]).
tvShow(9, 'Shooter',2, 165, [1, 8]).
tvShow(10, 'Designated Survivor',2, 205, [1, 8]).
tvShow(11, 'The Crown',1, 20, [2, 7]).
tvShow(12, 'The Exorcist', 3, 240, [6, 7]).
tvShow(13, 'Goliath',2, 110, [8]).
tvShow(14, 'The Good Place', 3, 190, [5]).
tvShow(15, 'No Tomorrow',2, 100, [2]).
tvShow(16, 'Pitch',2, 175, [1]).
tvShow(17, 'Queen Sugar',1, 40, [2, 7]).
tvShow(18, 'Search Party', 3, 210, [1, 8]).
tvShow(19, 'Speechless',2, 100, [6]).
tvShow(20, 'This is Us',2, 115, [7]).
tvShow(21, 'Timeless',1, 100, [8]).
tvShow(22, 'Atlanta',2, 280, [3]).
tvShow(23, 'Better Things',2, 150, [4]).
tvShow(24, 'Chance',1, 85, [1, 8]).
tvShow(25, 'Fleabag',1, 200, [1, 7]).
tvShow(26, 'High Maintenance', 3, 90, [2]).
tvShow(27, 'Narcos', 3, 300, [2]).
tvShow(28, 'One Mississipi',2, 130, [2]).
tvShow(29, 'Transparent',2, 120, [3]).
tvShow(30, 'Mr Robot',2, 145, [7]).
tvShow(31, 'The Flash',1, 75, [4]).
tvShow(21, 'Arrow',1, 85, [3, 7]).
tvShow(33, 'Game of Thrones', 3, 250, [7, 8]).
tvShow(34, 'Legends of Tomorrow',1, 90, [1, 2]).
tvShow(35, 'Humans',2, 100, [2]).
tvShow(36, 'Fringe',2, 180, [2]).
tvShow(37, 'Big Bang Theory',1, 210, [4]).
tvShow(38, 'Silicon Valley',1, 160, [7]).
tvShow(39, 'Da Vinci Demons',2, 125, [6]).
tvShow(40, 'Legion',2, 230, [6]).
tvShow(41, 'Powerless',1, 75, [6]).
tvShow(42, 'Daredevil', 3, 180, [1, 6]).
tvShow(43, 'Agents of SHIELD',2, 185, [1, 6]).
tvShow(44, 'MacGyver',2, 200, [4, 5]).
tvShow(45, 'Madam Secretary',2, 95, [4, 5]).
tvShow(46, 'Emerald City', 3, 80, [3]).
tvShow(47, 'The Blacklist',1, 155, [3, 7]).
tvShow(48, 'The Clone Wars',1, 140, [3]).
tvShow(49, 'Doctor Who', 3, 220, [3, 7]).
tvShow(50, 'Drunk History', 3, 115, [8]).
tvShow(51, 'Secret Files',1, 55, [1, 8]).
tvShow(52, 'The Simpsons',1, 75, [4, 8]).
tvShow(53, 'Family Guy',1, 70, [8]).
tvShow(54, 'Supernatural',2, 160, [7]).
tvShow(55, 'Supergirl',2, 125, [1, 5]).
tvShow(56, 'Gotham',2, 80, [4, 7]).
tvShow(57, 'Grimm',2, 190, [2]).
tvShow(58, 'Black Sails', 3, 250, [1]).
tvShow(59, 'Bones',2, 100, [1]).
tvShow(60, 'Blindspot',2, 170, [1]).

%restriction(Id, FromHour, ToHour)
restriction(1, 2200, 2400).
restriction(2, 2000, 2100).
restriction(3, 2000, 2200).
restriction(4, 2100, 2400).
restriction(5, 2100, 2300).
restriction(6, 2000, 2300).
restriction(7, 2300, 2400).
restriction(8, 2200, 2300).

%usersVote(IdTvShow, WeekDay, Hour, NumbVotes) -> hour is between 20 and 24, 8 slots of 30 min per day
usersVote(1, 1, 2000, 140).
usersVote(2, 1, 2000, 160).
usersVote(3, 2, 2050, 100).
usersVote(4, 7, 2150, 210).
usersVote(5, 6, 2300, 132).
usersVote(6, 5, 2000, 123).
usersVote(7, 5, 2200, 325).
usersVote(8, 3, 2350, 95).
usersVote(9, 4, 2000, 245).
usersVote(10, 4, 2100, 154).
usersVote(11, 5, 2150, 278).
usersVote(12, 5, 2150, 126).
usersVote(13, 7, 2250, 140).
usersVote(14, 7, 2300, 246).
usersVote(15, 2, 2000, 98).
usersVote(16, 2, 2350, 321).
usersVote(17, 6, 2250, 200).
usersVote(18, 4, 2200, 167).
usersVote(19, 6, 2250, 87).
usersVote(20, 4, 2150, 215).
usersVote(21, 7, 2150, 187).
usersVote(22, 1, 2100, 68).
usersVote(23, 2, 2100, 84).
usersVote(24, 3, 2100, 165).
usersVote(25, 3, 2300, 132).
usersVote(26, 3, 2350, 245).
usersVote(27, 3, 2300, 269).
usersVote(28, 5, 2200, 255).
usersVote(29, 6, 2100, 214).
usersVote(30, 6, 2150, 58).
usersVote(31, 5, 2200, 279).
usersVote(32, 7, 2200, 254).
usersVote(33, 7, 2000, 187).
usersVote(34, 5, 2000, 284).
usersVote(35, 6, 2050, 112).
usersVote(36, 2, 2050, 67).
usersVote(37, 2, 2250, 167).
usersVote(38, 2, 2350, 200).
usersVote(39, 6, 2100, 168).
usersVote(40, 7, 2050, 28).
usersVote(41, 1, 2100, 268).
usersVote(42, 7, 2100, 98).
usersVote(43, 7, 2150, 154).
usersVote(44, 5, 2250, 124).
usersVote(45, 1, 2200, 301).
usersVote(46, 1, 2250, 215).
usersVote(47, 5, 2000, 158).
usersVote(48, 6, 2100, 97).
usersVote(49, 7, 2100, 247).
usersVote(50, 6, 2150, 246).
usersVote(51, 7, 2200, 275).
usersVote(52, 5, 2300, 226).
usersVote(53, 4, 2300, 54).
usersVote(54, 4, 2350, 300).
usersVote(55, 3, 2050, 176).
usersVote(56, 3, 2000, 267).
usersVote(57, 3, 2200, 100).
usersVote(58, 3, 2250, 113).
usersVote(59, 7, 2100, 254).
usersVote(60, 2, 2150, 304).