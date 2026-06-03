SELECT title, price
FROM books
WHERE stock > 0
ORDER BY price ASC, id ASC
LIMIT 4;
