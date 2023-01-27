select genre_title, count(ga.genre_id) 
from genre g, genre_artist ga
where ga.genre_id = g.genre_id
group by genre_title;

select album_title, count(t.album_id)
from album a, track t 
where year_of_release >= '2019-01-01' and year_of_release <= '2020-01-01'and t.album_id = a.album_id
group by album_title;

select album_title, AVG(duration) 
from album a, track t
where a.album_id = t.album_id 
group by album_title
order by avg(duration);

select artist_name
from artist a, album_artist aa, album a2 
where a.artist_id = aa.artist_id and a2.year_of_release <> '2020-01-01' and aa.album_id = a2.album_id;

select distinct title_collection  
from collection c, collection_track ct, track t, album a, album_artist aa, artist a2
where a2.artist_id = 1 and aa.album_id = a.album_id and a2.artist_id = aa.artist_id and t.album_id = a.album_id and t.track_id = ct.track_id and c.collection_id = ct.collection_id  




