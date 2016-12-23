:- use_module(library(lists)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%             DATABASE          %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%tvShow(Id, Name, Duration, AquisionCost, [Restrictions])
tvShow(1, 'People of Earth', 0.5, 100, [1]).
tvShow(2, 'Insecure', 1, 130, [2]).
tvShow(3, 'Westworld', 1.5, 220, [3]).
tvShow(4, 'Black Mirror', 1, 180, [4]).
tvShow(5, 'Vikings', 0.5, 90, [5]).
tvShow(6, 'The Walking Dead', 1.5, 140, [6]).
tvShow(7, 'Van Helsing', 0.5, 75, [7]).
tvShow(8, 'Good Behavior', 1, 105, [8]).
tvShow(9, 'Shooter', 1, 165, [1, 8]).
tvShow(10, 'Designated Survivor', 1, 205, [1, 8]).
tvShow(11, 'The Crown', 0.5, 20, [2, 7]).
tvShow(12, 'The Exorcist', 1.5, 240, [6, 7]).
tvShow(13, 'Goliath', 1, 110, [8]).
tvShow(14, 'The Good Place', 1.5, 190, [5]).
tvShow(15, 'No Tomorrow', 1, 100, [2]).
tvShow(16, 'Pitch', 1, 175, [1]).
tvShow(17, 'Queen Sugar', 0.5, 40, [2, 7]).
tvShow(18, 'Search Party', 1.5, 210, [1, 8]).
tvShow(19, 'Speechless', 1, 100, [6]).
tvShow(20, 'This is Us', 1, 115, [7]).
tvShow(21, 'Timeless', 0.5, 100, [8]).
tvShow(22, 'Atlanta', 1, 280, [3]).
tvShow(23, 'Better Things', 1, 150, [4]).
tvShow(24, 'Chance', 0.5, 85, [1, 8]).
tvShow(25, 'Fleabag', 0.5, 200, [1, 7]).
tvShow(26, 'High Maintenance', 1.5, 90, [2]).
tvShow(27, 'Narcos', 1.5, 300, [2]).
tvShow(28, 'One Mississipi', 1, 130, [2]).
tvShow(29, 'Transparent', 1, 120, [3]).
tvShow(30, 'Mr Robot', 1, 145, [7]).
tvShow(31, 'The Flash', 0.5, 75, [4]).
tvShow(21, 'Arrow', 0.5, 85, [3, 7]).
tvShow(33, 'Game of Thrones', 1.5, 250, [7, 8]).
tvShow(34, 'Legends of Tomorrow', 0.5, 90, [1, 2]).
tvShow(35, 'Humans', 1, 100, [2]).
tvShow(36, 'Fringe', 1, 180, [2]).
tvShow(37, 'Big Bang Theory', 0.5, 210, [4]).
tvShow(38, 'Silicon Valley', 0.5, 160, [7]).
tvShow(39, 'Da Vinci Demons', 1, 125, [6]).
tvShow(40, 'Legion', 1, 230, [6]).
tvShow(41, 'Powerless', 0.5, 75, [6]).
tvShow(42, 'Daredevil', 1.5, 180, [1, 6]).
tvShow(43, 'Agents of SHIELD', 1, 185, [1, 6]).
tvShow(44, 'MacGyver', 1, 200, [4, 5]).
tvShow(45, 'Madam Secretary', 1, 95, [4, 5]).
tvShow(46, 'Emerald City', 1.5, 80, [3]).
tvShow(47, 'The Blacklist', 0.5, 155, [3, 7]).
tvShow(48, 'The Clone Wars', 0.5, 140, [3]).
tvShow(49, 'Doctor Who', 1.5, 220, [3, 7]).
tvShow(50, 'Drunk History', 1.5, 115, [8]).
tvShow(51, 'Secret Files', 0.5, 55, [1, 8]).
tvShow(52, 'The Simpsons', 0.5, 75, [4, 8]).
tvShow(53, 'Family Guy', 0.5, 70, [8]).
tvShow(54, 'Supernatural', 1, 160, [7]).
tvShow(55, 'Supergirl', 1, 125, [1, 5]).
tvShow(56, 'Gotham', 1, 80, [4, 7]).
tvShow(57, 'Grimm', 1, 190, [2]).
tvShow(58, 'Black Sails', 1.5, 250, [1]).
tvShow(59, 'Bones', 1, 100, [1]).
tvShow(60, 'Blindspot', 1, 170, [1]).

%restriction(Id, FromHour, ToHour)
restriction(1, 22, 24).
restriction(2, 20, 21).
restriction(3, 20, 22).
restriction(4, 21, 24).
restriction(5, 21, 23).
restriction(6, 20, 23).
restriction(7, 23, 24).
restriction(8, 22, 23).

%usersVote(IdTvShow, WeekDay, Hour, NumbVotes) -> hour is between 20 and 24, 8 slots of 30 min per day
usersVote(1, 1, 20, 140).
usersVote(2, 1, 20, 160).
usersVote(3, 2, 20.30, 100).
usersVote(4, 7, 21.30, 210).
usersVote(5, 6, 23, 132).
usersVote(6, 5, 20, 123).
usersVote(7, 5, 22, 325).
usersVote(8, 3, 23.30, 95).
usersVote(9, 4, 20, 245).
usersVote(10, 4, 21, 154).
usersVote(11, 5, 21.30, 278).
usersVote(12, 5, 21.30, 126).
usersVote(13, 7, 22.30, 140).
usersVote(14, 7, 23, 246).
usersVote(15, 2, 20, 98).
usersVote(16, 2, 23.30, 321).
usersVote(17, 6, 22.30, 200).
usersVote(18, 4, 22, 167).
usersVote(19, 6, 22.30, 87).
usersVote(20, 4, 21.30, 215).
usersVote(21, 7, 21.30, 187).
usersVote(22, 1, 21, 68).
usersVote(23, 2, 21, 84).
usersVote(24, 3, 21, 165).
usersVote(25, 3, 23, 132).
usersVote(26, 3, 23.30, 245).
usersVote(27, 3, 23, 269).
usersVote(28, 5, 22, 255).
usersVote(29, 6, 21, 214).
usersVote(30, 6, 21.30, 58).
usersVote(31, 5, 22, 279).
usersVote(32, 7, 22, 254).
usersVote(33, 7, 20, 187).
usersVote(34, 5, 20, 284).
usersVote(35, 6, 20.30, 112).
usersVote(36, 2, 20.30, 67).
usersVote(37, 2, 22.30, 167).
usersVote(38, 2, 23.30, 200).
usersVote(39, 6, 21, 168).
usersVote(40, 7, 20.30, 28).
usersVote(41, 1, 21, 268).
usersVote(42, 7, 21, 98).
usersVote(43, 7, 21.30, 154).
usersVote(44, 5, 22.30, 124).
usersVote(45, 1, 22, 301).
usersVote(46, 1, 22.30, 215).
usersVote(47, 5, 20, 158).
usersVote(48, 6, 21, 97).
usersVote(49, 7, 21, 247).
usersVote(50, 6, 21.30, 246).
usersVote(51, 7, 22, 275).
usersVote(52, 5, 23, 226).
usersVote(53, 4, 23, 54).
usersVote(54, 4, 23.30, 300).
usersVote(55, 3, 20.30, 176).
usersVote(56, 3, 20, 267).
usersVote(57, 3, 22, 100).
usersVote(58, 3, 22.30, 113).
usersVote(59, 7, 21, 254).
usersVote(60, 2, 21.30, 304).