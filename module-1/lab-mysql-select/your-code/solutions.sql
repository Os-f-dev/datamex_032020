/*CHALLENGE 01*/
/*SELECT 
	au.au_id AS 'Author ID', 
	au.au_lname AS 'Last Name', 
	au.au_fname AS 'First Name',
	t.title AS 'Titulo',
    p.pub_name AS 'Publisher'
FROM authors au
RIGHT JOIN titleauthor ta
ON au.au_id = ta.au_id
JOIN titles t
ON t.title_id = ta.title_id
JOIN publishers p
ON p.pub_id = t.pub_id;*/

/* CHALLENGE 02*/
/*SELECT 
	au.au_id AS 'Author ID',
    au.au_lname AS 'Last Name',
    au.au_fname AS 'First Name',
    p.pub_name AS 'Publisher',
    COUNT(ta.royaltyper) AS 'Title Count' 
FROM authors au
RIGHT JOIN titleauthor ta
ON au.au_id = ta.au_id
JOIN titles t
ON ta.title_id = t.title_id
JOIN publishers p
ON t.pub_id = p.pub_id
GROUP BY au.au_id, p.pub_id;*/

/*CHALLENGE 03*/
/*SELECT
	au.au_id AS 'Author ID', 
	au.au_lname AS 'Last Name', 
	au.au_fname AS 'First Name',
	SUM(t.ytd_sales) AS 'Total'
FROM authors au
LEFT JOIN titleauthor ta
ON au.au_id = ta.au_id
JOIN titles t
ON ta.title_id = t.title_id
GROUP BY au.au_id
ORDER BY Total DESC
LIMIT 3;*/

/*CHALLENGE 04*/
/*SELECT
	au.au_id AS 'Author ID', 
	au.au_lname AS 'Last Name', 
	au.au_fname AS 'First Name',
	COALESCE(SUM(ytd_sales), 0) AS 'Total'
FROM authors au
LEFT JOIN titleauthor ta
ON au.au_id = ta.au_id
LEFT JOIN titles t
ON ta.title_id = t.title_id
GROUP BY au.au_id
ORDER BY Total DESC;*/

/*BONUS*/
/*SELECT
	au.au_id AS 'Author ID', 
	au.au_lname AS 'Last Name', 
	au.au_fname AS 'First Name',
	COALESCE(SUM(ta.royaltyper*(t.advance+(t.price*t.ytd_sales)))/100, 0) AS 'Profit'
FROM authors au
LEFT JOIN titleauthor ta
ON au.au_id = ta.au_id
LEFT JOIN titles t
ON ta.title_id = t.title_id
GROUP BY au.au_id
ORDER BY Profit DESC
LIMIT 3;*/