UPDATE customer SET fax = NULL;

UPDATE customer SET company = 'Self'
Where company IS NULL;

UPDATE customer SET last_name = 'Thompson'
WHERE customer_id = 28;

UPDATE customer SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

UPDATE track SET composer = 'The darkness around us'
WHERE composer IS NULL AND genre_id IN (
	SELECT genre_id FROM genre
  WHERE name = 'Metal'
);