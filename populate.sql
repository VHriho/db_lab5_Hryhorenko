--Filling data in developer table

insert into developer(developer_id, name) values(1, 'PUBG Studios');
insert into developer(developer_id, name) values(2, 'Mojang Studios');
insert into developer(developer_id, name) values(3, 'Blizzard Entertainment');
insert into developer(developer_id, name) values(4, 'Facepunch Studios');
insert into developer(developer_id, name) values(5, 'Re-Logic');
insert into developer(developer_id, name) values(6, 'Frontier Developments');
insert into developer(developer_id, name) values(7, 'Valve');
insert into developer(developer_id, name) values(8, 'CD Projekt Red');
insert into developer(developer_id, name) values(9, 'Maxis');
insert into developer(developer_id, name) values(10, 'Mediatonic');

--Filling data in publisher table

insert into publisher(publisher_id, name) values(1, 'Krafton');
insert into publisher(publisher_id, name) values(2, 'Mojang Studios');
insert into publisher(publisher_id, name) values(3, 'Blizzard Entertainment');
insert into publisher(publisher_id, name) values(4, 'Valve');
insert into publisher(publisher_id, name) values(5, 'Re-Logic');
insert into publisher(publisher_id, name) values(6, 'Atari, Inc. (Windows)');
insert into publisher(publisher_id, name) values(7, 'Valve (digital)');
insert into publisher(publisher_id, name) values(8, 'CD Projekt');
insert into publisher(publisher_id, name) values(9, 'Electronic Arts');
insert into publisher(publisher_id, name) values(10, 'Devolver Digital');

--Filling data in game table

insert into game(game_id, name, sales, series, release, developer_id, publisher_id) values(1, 'PlayerUnknown"s Battlegrounds', 42, null, 'Dec-17', 1, 1);
insert into game(game_id, name, sales, series, release, developer_id, publisher_id) values(2, 'Minecraft', 33, 'Minecraft', 'Nov-11', 2, 2);
insert into game(game_id, name, sales, series, release, developer_id, publisher_id) values(3, 'Diablo III', 20, 'Diablo', 'May-12', 3, 3);
insert into game(game_id, name, sales, series, release, developer_id, publisher_id) values(4, 'Garry"s Mod', 20, null, 'Nov-06', 4, 4);
insert into game(game_id, name, sales, series, release, developer_id, publisher_id) values(5, 'Terraria', 17.2, null, 'May-11', 5, 5);
insert into game(game_id, name, sales, series, release, developer_id, publisher_id) values(6, 'RollerCoaster Tycoon 3', 10, 'RollerCoaster Tycoon', 'Oct-04', 6, 6);
insert into game(game_id, name, sales, series, release, developer_id, publisher_id) values(7, 'Half-Life 2', 12, 'Half-Life', 'Nov-04', 7, 7);
insert into game(game_id, name, sales, series, release, developer_id, publisher_id) values(8, 'The Witcher 3: Wild Hunt', 12, 'The Witcher', 'May-15', 8, 8);
insert into game(game_id, name, sales, series, release, developer_id, publisher_id) values(9, 'The Sims', 11, 'The Sims', 'Feb-00', 9, 9);
insert into game(game_id, name, sales, series, release, developer_id, publisher_id) values(10, 'Fall Guys', 10, null, 'Aug-20', 10, 10);

--Filling data in game_genre table

insert into game_genre(genre, genre_id, game_id) values('Battle royale', 1, 1);
insert into game_genre(genre, genre_id, game_id) values('Sandbox', 2, 2);
insert into game_genre(genre, genre_id, game_id) values('Survival', 3, 2);
insert into game_genre(genre, genre_id, game_id) values('Action role-playing', 4, 3);
insert into game_genre(genre, genre_id, game_id) values('Sandbox', 5, 4);
insert into game_genre(genre, genre_id, game_id) values('Action-adventure', 6, 5);
insert into game_genre(genre, genre_id, game_id) values('Construction and management simulation', 7, 6);
insert into game_genre(genre, genre_id, game_id) values('First-person shooter', 8, 7);
insert into game_genre(genre, genre_id, game_id) values('Action role-playing', 9, 8);
insert into game_genre(genre, genre_id, game_id) values('Life simulation', 10, 9);
insert into game_genre(genre, genre_id, game_id) values('Battle royale', 11, 10);