SELECT author, COUNT(id)
FROM books
GROUP BY author;