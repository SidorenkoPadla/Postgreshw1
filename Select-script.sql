select album_title, year_of_release 
from album
where year_of_release = '2018-01-01';

SELECT track_title , duration 
FROM track 
ORDER BY duration  DESC LIMIT 1;

select track_title, duration
from track
where duration >= '00:03:50';

select title_collection 
from collection
where year_of_release >= '2018-01-01' and year_of_release <= '2020-01-01';

select artist_name 
from artist
where artist_name not like '% %';

select track_title 
from track
where track_title  like '%My%' or track_title like '%Мой%';