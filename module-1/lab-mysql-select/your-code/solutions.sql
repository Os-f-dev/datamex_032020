/*
SELECT
	au.au_id AS 'AUTHOR ID',
    au.au_lname AS 'LAST NAME',
    au.au_fname AS 'FIRST NAME',
    t.title AS 'TITLE',
    p.pub_name AS 'PUBLISHER'    
FROM authors au
RIGHT JOIN titleauthor ta
ON au.au_id = ta.au_id
JOIN titles t
ON t.title_id = ta.title_id
JOIN publishers p
ON p.pub_id = t.pub_id;
select * from titleauthor;


SELECT
	au.au_id AS 'AUTHOR ID',
    au.au_lname AS 'LAST NAME',
    au.au_fname AS 'FIRST NAME',
    p.pub_name AS 'PUBLISHER',
	COUNT(ta.au_id) AS 'TITLE COUNT'
FROM authors au
RIGHT JOIN titleauthor ta
ON au.au_id = ta.au_id
JOIN titles t
ON ta.title_id = t.title_id
JOIN publishers p
ON t.pub_id = p.pub_id
GROUP BY au.au_id, p.pub_id;

SELECT
	au.au_id AS 'AUTHOR ID',
    au.au_lname AS 'LAST NAME',
    au.au_fname AS 'FIRST NAME',
    SUM(t.ytd_sales) AS 'TOTAL'
FROM authors au
LEFT JOIN titleauthor ta
ON au.au_id = ta.au_id
JOIN titles t
ON ta.title_id = t.title_id
GROUP BY au.au_id
ORDER BY TOTAL desc
LIMIT 3;

SELECT
	au.au_id AS 'AUTHOR ID',
    au.au_lname AS 'LAST NAME',
    au.au_fname AS 'FIRST NAME',
    COALESCE(SUM(t.ytd_sales),0) AS 'TOTAL'
FROM authors au
LEFT JOIN titleauthor ta
ON ta.au_id = au.au_id
LEFT JOIN titles t
ON ta.title_id = t.title_id
GROUP BY au.au_id
ORDER BY TOTAL desc;

SELECT
	au.au_id AS 'AUTHOR ID',
    au.au_lname AS 'LAST NAME',
    au.au_fname AS 'FIRST NAME',
    COALESCE(SUM(ta.royaltyper*(t.advance+(t.price*t.ytd_sales))/100),0) AS 'PROFIT'
FROM authors au
LEFT JOIN titleauthor ta
ON ta.au_id = au.au_id
LEFT JOIN titles t
ON ta.title_id = t.title_id
GROUP BY au.au_id
ORDER BY PROFIT desc
LIMIT 3;
*/