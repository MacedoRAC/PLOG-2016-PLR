:- use_module(library(lists)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%             DATABASE          %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%tvShow(Id, Name, Duration, AquisionCost, [Restrictions])
tvShow(1, 'People of Earth', 0.5, 100, [Restrictions]).
tvShow(2, 'Insecure', 1, 130, [Restrictions]).
tvShow(3, 'Westworld', 1.5, 220, [Restrictions]).
tvShow(4, 'Black Mirror', 1, 180, [Restrictions]).
tvShow(5, 'Vikings', 0.5, 90, [Restrictions]).
tvShow(6, 'The Walking Dead', 1.5, 140, [Restrictions]).
tvShow(7, 'Van Helsing', 0.5, 75, [Restrictions]).
tvShow(8, 'Good Behavior', 1, 105, [Restrictions]).
tvShow(9, 'Shooter', 1, 165, [Restrictions]).
tvShow(10, 'Designated Survivor', 1, 205, [Restrictions]).
tvShow(11, 'The Crown', 0.5, 20, [Restrictions]).
tvShow(12, 'The Exorcist', 1.5, 240, [Restrictions]).
tvShow(13, 'Goliath', 1, 110, [Retrictions]).
tvShow(14, 'The Good Place', 1.5, 190, [Restrictions]).
tvShow(15, 'No Tomorrow', 1, 100, [Restrictions]).
tvShow(16, 'Pitch', 1, 175, [Restrictions]).
tvShow(17, 'Queen Sugar', 0.5, 40, [Restrictions]).
tvShow(18, 'Search Party', 1.5, 210, [Restrictions]).
tvShow(19, 'Speechless', 1, 100, [Restrictions]).
tvShow(20, 'This is Us', 1, 115, [Restrictions]).
tvShow(21, 'Timeless', 0.5, 100, [Restrictions]).
tvShow(22, 'Atlanta', 1, 280, [Restrictions]).
tvShow(23, 'Better Things', 1, 150, [Restrictions]).
tvShow(24, 'Chance', 0.5, 85, [Restrictions]).
tvShow(25, 'Fleabag', 0.5, 200, [Restrictions]).
tvShow(26, 'High Maintenance', 1.5, 90, [Restrictions]).
tvShow(27, 'Narcos', 1.5, 300, [Restrictions]).
tvShow(28, 'One Mississipi', 1, 130, [Restrictions]).
tvShow(29, 'Transparent', 1, 120, [Restrictions]).
tvShow(30, 'Mr Robot', 1, 145, [Restrictions]).
tvShow(31, 'The Flash', 0.5, 75, [Restrictions]).
tvShow(21, 'Arrow', 0.5, 85, [Restrictions]).
tvShow(33, 'Game of Thrones', 1.5, 250, [Restrictions]).
tvShow(34, 'Legends of Tomorrow', 0.5, 90, [Restrictions]).
tvShow(35, 'Humans', 1, 100, [Restrictions]).
tvShow(36, 'Fringe', 1, 180, [Restrictions]).
tvShow(37, 'Big Bang Theory', 0.5, 210, [Restrictions]).
tvShow(38, 'Silicon Valley', 0.5, 160, [Restrictions]).
tvShow(39, 'Da Vinci Demons', 1, 125, [Restrictions]).
tvShow(40, 'Legion', 1, 230, [Restrictions]).
tvShow(41, 'Powerless', 0.5, 75, [Restrictions]).
tvShow(42, 'Daredevil', 1.5, 180, [Restrictions]).
tvShow(43, 'Agents of SHIELD', 1, 185, [Restrictions]).
tvShow(44, 'MacGyver', 1, 200, [Restrictions]).
tvShow(45, 'Madam Secretary', 1, 95, [Restrictions]).
tvShow(46, 'Emerald City', 1.5, 80, [Restrictions]).
tvShow(47, 'The Blacklist', 0.5, 155, [Restrictions]).
tvShow(48, 'The Clone Wars', 0.5, 140, [Restrictions]).
tvShow(49, 'Doctor Who', 1.5, 220, [Restrictions]).
tvShow(50, 'Drunk History', 1.5, 115, [Restrictions]).
tvShow(51, 'Secret Files', 0.5, 55, [Restrictions]).
tvShow(52, 'The Simpsons', 0.5, 75, [Restrictions]).
tvShow(53, 'Family Guy', 0.5, 70, [Restrictions]).
tvShow(54, 'Supernatural', 1, 160, [Restrictions]).
tvShow(55, 'Supergirl', 1, 125, [Restrictions]).
tvShow(56, 'Gotham', 1, 80, [Restrictions]).
tvShow(57, 'Grimm', 1, 190, [Restrictions]).
tvShow(58, 'Black Sails', 1.5, 250, [Restrictions]).
tvShow(59, 'Bones', 1, 100, [Restrictions]).
tvShow(60, 'Blindspot', 1, 170, [Restrictions]).

%userVote(IdTvShow, WeekDay, Hour) -> hour is between 20 and 24, 8 slots of 30 min per day

%restriction(Id, Restriction)