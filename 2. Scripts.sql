create table if not exists Musical_genres(
    genre_id SERIAL primary key,
    genre_name VARCHAR(80) unique not null
   );
    
create table if not exists Artists(
    artist_id SERIAL primary key,
    artist_name VARCHAR(40) not null
   );

create table if not exists Artists_genres(
    artist INTEGER not null references Artists(artist_id),
    genre INTEGER not null references Musical_genres(genre_id),
    constraint artist_genre_pk primary key (artist, genre)
    );

create table if not exists Albums(
    album_id SERIAL primary key,
    album_name VARCHAR(80) not null,
    album_year date
    );
    
create table if not exists Music_tracks(
    track_id SERIAL primary key,
    album INTEGER not null references Albums(album_id),
    track_name VARCHAR(80) not null,
    duration TIME
    );
 
create table if not exists Artists_albums(
    artist INTEGER not null references Artists(artist_id),
    album INTEGER not null references Albums(album_id),
    constraint artist_album_pk primary key (artist, album)
    );
   
create table if not exists Songs_collections(
    collection_id SERIAL primary key,
    collection_year date not null,
    collection_name VARCHAR(80) not null
    );
    
create table if not exists Collections_tracks(
    track INTEGER not null references Music_tracks(track_id),
    collection INTEGER not null references Songs_collections(collection_id),
    constraint coll_track_pk primary key (track, collection)
    );