/*USE pubs1;*/
/*SELECT au.au_id AS 'AUTHOR_ID', au.au_lname AS 'LAST NAME', au.au_fname AS 'FIRST NAME', 
ti.title AS 'TITLE', pu.pub_name AS 'PUBLISHER', COUNT(*)
FROM authors AS au
INNER JOIN titleauthor AS ta
ON au.au_id = ta.au_id
LEFT JOIN titles AS ti
ON ta.title_id = ti.title_id
RIGHT JOIN publishers AS pu
ON ti.pub_id = pu.pub_id*/

/*SELECT B.AUTHOR_ID, B.LAST_NAME, B.FIRST_NAME, B.PUBLISHER, COUNT('TITLES') AS TITLE_COUNT FROM 
(SELECT au.au_id AS 'AUTHOR_ID', au.au_lname AS 'LAST_NAME', au.au_fname AS 'FIRST_NAME', 
pu.pub_name AS 'PUBLISHER', ti.title AS 'TITLES'
FROM authors AS au
INNER JOIN titleauthor AS ta
ON au.au_id = ta.au_id
INNER JOIN titles AS ti
ON ta.title_id = ti.title_id
INNER JOIN publishers AS pu
ON ti.pub_id = pu.pub_id) AS B
GROUP BY B.AUTHOR_ID, B.LAST_NAME, B.FIRST_NAME, B.PUBLISHER
ORDER BY B.AUTHOR_ID DESC;*/

/*SELECT au.au_id as 'AUTHOR_ID', au.au_lname as'LAST NAME', au.au_fname as 'FIRST NAME',
SUM(ti.ytd_sales) as 'TOTAL'
FROM authors AS au
INNER JOIN titleauthor AS ta
ON au.au_id=ta.au_id
LEFT JOIN titles AS ti
ON ta.title_id=ti.title_id
GROUP BY au.au_id
ORDER BY SUM(ti.ytd_sales) DESC
LIMIT 3;*/

/*SELECT au.au_id as 'AUTHOR_ID', au.au_lname as'LAST NAME', au.au_fname as 'FIRST NAME',
SUM(ti.ytd_sales) as 'TOTAL'
FROM authors AS au
INNER JOIN titleauthor AS ta
ON au.au_id=ta.au_id
LEFT JOIN titles AS ti
ON ta.title_id=ti.title_id
GROUP BY au.au_id
ORDER BY SUM(ti.ytd_sales) DESC
LIMIT 24;*/

SELECT authors.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME",
COALESCE(titles.advance+(titles.ytd_sales*titles.price)*
(titles.royalty*titleauthor.royaltyper/100),0) as TOTAL
FROM authors
LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY  TOTAL DESC
LIMIT 3;





