create table if not exists artist(
artist_id SERIAL primary key,
artist_name varchar(40) not null
);

create table if not exists Genre(
genre_id SERIAL primary key,
genre_title varchar(40) not null
);

create table if not exists Album(
album_id SERIAL primary key references Track(album_id),
album_title varchar(40) not null,
year_of_release DATE not null
);

create table if not exists Collection(
	collection_id SERIAL primary key,
	title_collection varchar(40) not null,
	year_of_release DATE not null
);

create table if not exists Track(
	track_id SERIAL primary key,
	duration TIME not null,
	album_id SERIAL unique not null
);

create table if not exists Collection_track(
	track_id INTEGER references Track(track_id),
	collection_id INTEGER references Collection(collection_id),
	constraint jk primary key (track_id, collection_id)
);

create table if not exists Album_artist(
artist_id INTEGER references artist(artist_id),
album_id INTEGER references Album(album_id),
constraint fk primary key (artist_id, album_id)
);

create table if not exists Genre_artist(
artist_id INTEGER references artist(artist_id),
genre_id INTEGER references Genre(genre_id),
constraint pk primary key (artist_id, genre_id)
);

