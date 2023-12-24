insert into artists(artist_name)
values ('Elton John'), ('Madonna'), ('Michael Jackson'), ('Mick Jagger'),
('Sting'), ('Gorillaz'), ('Rammstein'), ('Moby'), ('Spice Girls');

insert into musical_genres(genre_name)
values ('Soul'), ('Pop music'), ('Disco'), ('Reggae'),
       ('Rap'), ('Electronic'), ('Jazz'), ('House'), ('Techno'), 
       ('Heavy Metal'), ('Blues'), ('Rock');

insert into artists_genres
values (1, 27), (1, 36), (1, 37), (2, 27), (2, 32), (2, 37), (3, 26), (3, 27), (3, 28), (3, 37),
       (4, 27), (4, 36), (4, 37), (5, 27), (5, 29), (5, 31), (5, 37), (6, 27), (6, 30), (6, 31), (6, 37),
       (7, 35), (7, 37), (8, 31), (8, 33), (8, 34), (9, 27);
 
insert into albums(album_name, album_year)
values ('Spiceworld', '1997-11-01'), ('The Lockdown Sessions', '2021-10-02'), ('Hard Candy', '2019-04-28'), 
       ('Invincible', '2018-10-20'), ('The Very Best Of Mick Jagger', '2019-04-01'), ('44/876', '2018-04-20'),
       ('My Songs', '2019-05-24'), ('The Now Now', '2018-06-29'), ('Song Machine, Season One: Strange Timez', '2020-10-23'),
       ('Rammstein', '2019-03-28'), ('Zeit', '2022-04-29'), ('All Visible Objects', '2020-03-10'), 
       ('Live Ambients – Improvised Recordings Vol. 1', '2020-11-23');

insert into artists_albums
values (9, 1), (9, 2), (1, 3), (5, 3), (2, 4), (6, 5), (8, 5), (4, 6), (5, 7), (5, 8), (4, 8), (6, 7), (6, 8),
       (7, 11), (7, 12), (9, 13), (9, 14), (6, 13);

insert into artists_albums
values (3, 1);

insert into artists_albums
values (6, 10), (6, 9);
      
insert into music_tracks(album, track_name, duration)
values (1, '«Tell Me Why»', '00:04:13'), (1, 'Let Love Lead the Way', '00:02:04'),
       (2, 'Spice Up Your Life', '00:02:53'), (2, 'Stop', '00:03:24'), (2, 'Too Much', '00:04:32'),
       (3, 'Learn to Fly', '00:03:32'), (3, 'Chosen Family', '00:04:40'),
       (4, 'Candy Shop', '00:04:16'), (4, 'She"s Me', '00:06:05'), (4, 'Voices', '00:02:39'),
       (5, 'My song', '00:01:49'),
       (6, 'My name', '00:04:10'), (6, 'Only you', '00:03:21'),
       (7, '44/876', '00:02:59'), (7, '2nd Street', '00:04:00'), (7, 'Crooked Tree', '00:03:37'), (7, 'Night Shift', '00:03:26'),
       (8, 'Desert Rose', '00:03:56'),
       (9, 'Hollywood', '00:04:53'), (9, 'Kansas', '00:04:08'), (9, 'Tranz', '00:02:42'), (9, 'Humility', '00:03:17'),
       (10, 'The Valley of the Pagans', '00:03:01'),
       (11, 'Deutschland', '00:05:23'), (11, 'Sex', '00:03:56'),
       (12, 'Armee Der Tristen', '00:03:26'), (12, 'OK', '00:04:03'), (12, 'Lügen', '00:03:48'),
       (13, 'My World', '00:04:10'), (13, 'Crazy', '00:02:56'),
       (14, 'Weekeand', '00:03:48'), (14, 'My home', '00:02:34');
 
insert into music_tracks(album, track_name, duration)
values (14, 'For my opinion', '00:04:00');
      
insert into songs_collections(collection_year, collection_name)
values ('2022-04-01', 'The Best');

insert into songs_collections(collection_year, collection_name)
values ('2002-06-01', 'Best 2000"s');

insert into songs_collections(collection_year, collection_name)
values ('2019-06-10', 'Pop music'), ('2020-11-23', 'Rock/electric music');

insert into collections_tracks
values (3, 1), (4, 1), (5, 1), (10, 1), (11, 1), (13, 1), (16, 1), (20, 1), (26, 1), (34, 1),
       (3, 2), (4, 2), (5, 2), (8, 2), (10, 2), (11, 2), (12, 2), (13, 2),
       (14, 3), (16, 3), (17, 3), (21, 3), (22, 3), (25, 3), (27, 3), (30, 3);
      
insert into collections_tracks
values (3, 4), (4, 4);

