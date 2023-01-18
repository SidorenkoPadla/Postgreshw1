truncate track  cascade;

insert into artist(artist_id, artist_name)
values 
	(1, 'КОНВИРСЫ'), 
	(2, '104'), 
	(3, 'Скриптонит'), 
	(4, 'нексюша'), 
	(5, 'Pouya'), 
	(6, 'Babymetal'),
	(7, 'Sasha Gray'),
	(8, 'RAM');

insert into genre(genre_title) 
values 
	('rapcore'),
	('rock'),
	('rap'),
	('pop'),
	('metal');

insert into genre_artist 
values
	(1,4),
	(2,3),
	(3,3),
	(3,4),
	(4,4),
	(5,3),
	(6,2),
	(6,5),
	(7,2),
	(8,1),
	(8,3);

insert into album 
values
	(1, 'Кино без сигарет', '2020-01-01'),
	(2, 'Уроборос: Зеркала', '2017-01-01'),
	(3, 'И СМЕХ И ГРЕХ', '2022-01-01'),
	(4, 'FIVE FIVE', '2018-01-01'),
	(5, 'Metal Resistance', '2016-01-01'),
	(6, 'Starscream', '2022-01-01'),
	(7, 'Герои лета', '2015-01-01'),
	(8, 'Какао', '2021-01-01');
	
insert into album_artist 
values 
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8);

insert into track 
values 
	(1, '00:02:19', 1, 'Братик III');