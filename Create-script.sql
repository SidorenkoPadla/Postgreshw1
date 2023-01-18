create table if not exists artist(
	artist_id SERIAL primary key,
	artist_name varchar(40) not null
);

create table if not exists Genre(
	genre_id SERIAL primary key,
	genre_title varchar(40) not null unique
);

create table if not exists Album(
	album_id SERIAL primary key,
	album_title varchar(40) not null unique,
	year_of_release DATE not null check(year_of_release > '1950-01-01')
);

create table if not exists Collection(
	collection_id SERIAL primary key,
	title_collection varchar(40) not null,
	year_of_release DATE not null check(year_of_release > '1950-01-01')
);

create table if not exists Track(
	track_id SERIAL primary key,
	duration TIME not null check(duration > '00:01:00'),
	album_id int not null references Album(album_id),
	track_title varchar(40) not null
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

