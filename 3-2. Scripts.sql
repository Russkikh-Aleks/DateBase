-- Задание 2 - SELECT-запросы
-- Название и продолжительность самого длительного трека
select track_name
from music_tracks
where duration = (select max(duration)
                  from music_tracks);

--Название треков, продолжительность которых не менее 3,5 минут
select track_name
from music_tracks
where duration >= '00:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
select collection_name
from songs_collections
where extract(year from collection_year)  between 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова.
select artist_name
from artists
where artist_name not like '% %';

--Название треков, которые содержат слово «мой» или «my»
select track_name
from music_tracks
where track_name like 'My%' or track_name like '%my%' or track_name like '%my' or
      track_name like 'Мой%' or track_name like '%мой%' or track_name like '%мой';
     
-- Задание 3 - SELECT-запросы
-- Количество исполнителей в каждом жанре
select genre_name, count(artist) from musical_genres mg
left join artists_genres a on mg.genre_id = a.genre
group by genre_name;

--Количество треков, вошедших в альбомы 2019–2020 годов
select count(*) from music_tracks mt
left join albums a on mt.album = a.album_id
where extract(year from album_year) between 2019 and 2020;

--Средняя продолжительность треков по каждому альбому
select album_name, avg(duration) from albums a
left join music_tracks mt on a.album_id = mt.album
group by album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
select artist_name from artists a
left join artists_albums aa on a.artist_id = aa.artist
left join albums al on aa.album = al.album_id
where artist_id != all(select artist from artists_albums aa2
                       left join albums a2 on aa2.album = a2.album_id
                       where extract(year from album_year) = 2020)
group by artist_name;  

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select collection_name from songs_collections sc
left join collections_tracks ct on sc.collection_id = ct.collection 
left join music_tracks mt on ct.track = mt.track_id 
left join albums a on mt.album = a.album_id 
left join artists_albums aa on a.album_id = aa.album 
left join artists a2 on aa.artist = a2.artist_id
where a2.artist_name = 'Spice Girls'
group by collection_name;

--Задание 4(необязательное)
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
select album_name from albums a
left join artists_albums aa on a.album_id = aa.album
where aa.artist != all(select artist
                       from artists_genres
                       group by artist
                       having count(genre) = 1)
group by album_name;

--Наименования треков, которые не входят в сборники.
select track_name
from music_tracks
where track_id != all(select track 
                      from collections_tracks);                     
                     
--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько
select artist_name from artists a
left join artists_albums aa on a.artist_id = aa.artist
where album = any (select album
               from music_tracks
               where duration = (select min(duration)
                                 from music_tracks));

--Названия альбомов, содержащих наименьшее количество треков
select album_name 
from albums
where album_id = any (select album
                      from music_tracks
                      group by album
                      having count(*) = (select min(num) from (select count(*) num
                                                              from music_tracks
                                                              group by album)));

               