SELECT genre.name, COUNT(*)  FROM track
JOIN genre
	ON genre.genre_id = track.genre_id
GROUP BY genre.name;

SELECT genre.name, COUNT(*)  FROM track
JOIN genre
	ON genre.genre_id = track.genre_id
WHERE genre.name = 'Pop' OR genre.name = 'Rock'
GROUP BY genre.name;

SELECT artist.name, COUNT(*) FROM album
JOIN artist
	ON artist.artist_id = album.artist_id
GROUP BY artist.name;