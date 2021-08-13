-- ARTIST TABLE --

INSERT INTO artist (name)
VALUES ('Kanye West'), ('Frank Ocean'), ('Mac Miller');


SELECT *
FROM artist
ORDER BY name
LIMIT 5;

-- EMPLOYEE TABLE --

SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';


SELECT *
FROM employee
WHERE reports_to IN (
  SELECT employee_id
  FROM employee
  WHERE first_name = 'Nancy'
  AND last_name = 'Edwards'
);


SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

-- INVOICE TABLE --

SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';


SELECT MAX(total)
FROM invoice;


SELECT MIN(total)
FROM invoice;


SELECT *
FROM invoice
WHERE total > 5;


SELECT COUNT(*)
FROM invoice
WHERE total < 5;


SELECT SUM(total)
FROM invoice;

-- JOIN QUERIES --

SELECT i.*
FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
WHERE il.unit_price > .99;


SELECT i.invoice_date AS "Date",
c.first_name AS "Customer First",
c.last_name AS "Customer Last",
i.total AS "Total"
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;


SELECT c.first_name AS "Customer First",
c.last_name AS "Customer Last",
e.first_name AS "Support First",
e.last_name AS "Support Last"
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;


SELECT al.title AS "Album Title", 
ar.name AS "Artist Name"
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;

-- EXTRA CREDIT --

