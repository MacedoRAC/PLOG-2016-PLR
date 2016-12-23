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