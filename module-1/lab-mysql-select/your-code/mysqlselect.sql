Challenge1

USE publications;

SELECT au.au_id as 'AUTHOR_ID', au.au_lname as'LAST NAME', au.au_fname as 'FIRST NAME', ti.title as 'TITLE', pu.pub_name as 'PUBLISHER'
FROM authors AS au
INNER JOIN titleauthor AS ta
ON au.au_id=ta.au_id
LEFT JOIN titles AS ti
ON ta.title_id=ti.title_id
LEFT JOIN publishers AS pu
ON ti.pub_id=pu.pub_id;

SELECT au.au_id as 'AUTHOR_ID', au.au_lname as'LAST NAME', au.au_fname as 'FIRST NAME',
ti.title as 'TITLE', pu.pub_name as 'PUBLISHER', COUNT(*) 
FROM authors AS au
INNER JOIN titleauthor AS ta
ON au.au_id=ta.au_id
LEFT JOIN titles AS ti
ON ta.title_id=ti.title_id
LEFT JOIN publishers AS pu
ON ti.pub_id=pu.pub_id;

Challenge2

SELECT COUNT(*) FROM titleauthor;

SELECT T.AUTHOR_ID, T.LAST_NAME, T.FIRST_NAME, T.PUBLISHER,COUNT(T.TITLES) AS 'TITLE COUNT' FROM  
SELECT au.au_id as 'AUTHOR_ID', au.au_lname as'LAST_NAME', au.au_fname as 'FIRST_NAME',
pu.pub_name as 'PUBLISHER', ti.title as 'TITLES'
FROM authors AS au
INNER JOIN titleauthor AS ta
ON au.au_id=ta.au_id 
INNER JOIN titles AS ti
ON ta.title_id=ti.title_id
INNER JOIN publishers AS pu
ON ti.pub_id=pu.pub_id) AS T
GROUP BY T.PUBLISHER,T.AUTHOR_ID,T.LAST_NAME,T.FIRST_NAME
ORDER BY T.AUTHOR_ID DESC;

Challenge3

SELECT au.au_id as 'AUTHOR_ID', au.au_lname as'LAST NAME', au.au_fname as 'FIRST NAME',
SUM(ti.ytd_sales) as 'TOTAL'
FROM authors AS au
INNER JOIN titleauthor AS ta
ON au.au_id=ta.au_id
LEFT JOIN titles AS ti
ON ta.title_id=ti.title_id
GROUP BY au.au_id
ORDER BY SUM(ti.ytd_sales) DESC
LIMIT 3;

Challenge4

SELECT au.au_id as 'AUTHOR_ID', au.au_lname as'LAST NAME', au.au_fname as 'FIRST NAME',
SUM(ti.ytd_sales) as 'TOTAL'
FROM authors AS au
INNER JOIN titleauthor AS ta
ON au.au_id=ta.au_id
LEFT JOIN titles AS ti
ON ta.title_id=ti.title_id
GROUP BY au.au_id
ORDER BY SUM(ti.ytd_sales) DESC
LIMIT 24;

Bonus

SELECT authors.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME",
COALESCE(titles.advance+(titles.ytd_sales*titles.price)*
(titles.royalty*titleauthor.royaltyper/100),0) as TOTAL
FROM authors
LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC
LIMIT 3;