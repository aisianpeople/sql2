SELECT * FROM invoice
	JOIN invoice_line
  	    ON invoice.invoice_id = invoice_line.invoice_id
        WHERE unit_price > .99;

SELECT invoice_date, first_name, last_name, total from customer
	JOIN invoice
  	ON customer.customer_id = invoice.customer_id;

SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name from customer
	JOIN employee
  	ON customer.support_rep_id = employee.employee_id;

SELECT title, name from album
	JOIN artist
  	ON album.artist_id = artist.artist_id;

SELECT track_id from playlist_track
	JOIN playlist
  	ON playlist_track.playlist_id = playlist.playlist_id
    WHERE name = 'Music';

SELECT name from track
	JOIN playlist_track
  	ON track.track_id = playlist_track.track_id
    WHERE playlist_id = 5;

SELECT track.name, playlist.name from playlist_track
	JOIN track
  	ON track.track_id = playlist_track.track_id
  JOIN playlist
  	ON playlist.playlist_id = playlist_track.playlist_id;

SELECT track.name, album.title from track
	JOIN album
  	ON track.album_id = album.album_id
  JOIN genre
  	ON genre.genre_id = track.genre_id
  WHERE genre.name = 'Alternative & Punk';