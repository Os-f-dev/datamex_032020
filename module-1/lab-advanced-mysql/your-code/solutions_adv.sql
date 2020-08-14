/*SELECT 
	t.title_id AS 'Title ID',
    au.au_id AS 'Author ID',
    t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS 'Sales Royality' 
FROM titles t
JOIN titleauthor ta
ON t.title_id = ta.title_id
JOIN authors au
ON au.au_id = ta.au_id
JOIN sales s
ON t.title_id = s.title_id;*/

/*SELECT t.title_id AS 'Title_ID', t.au_id AS 'Author ID', SUM(t.Sales) AS 'Suma'
FROM (SELECT titles.title_id, authors.au_id, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 As 'Sales' 
	FROM titles
	JOIN titleauthor
	ON titles.title_id = titleauthor.title_id
    JOIN  authors
    ON authors.au_id = titleauthor.au_id
	JOIN sales
    ON titles.title_id = sales.title_id) AS t
GROUP BY t.au_id, title_id;*/

/*SELECT v.Author_ID AS 'Author ID', SUM(v.Suma) AS 'Total Profits'
	FROM(SELECT t.title_id AS 'Title_ID', t.au_id AS 'Author_ID', SUM(t.Sales) AS 'Suma'
    FROM(SELECT titles.title_id, authors.au_id, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 As 'Sales'
		FROM titles
        JOIN titleauthor
        ON titles.title_id = titleauthor.title_id
        JOIN authors
        ON authors.au_id = titleauthor.au_id
        JOIN sales
        ON titles.title_id = sales.title_id) AS t
	GROUP BY t.au_id, title_id) AS v
GROUP BY v.Author_ID;*/

/*SELECT au.au_id AS 'AUTHOR_ID', SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS 'TOTAL PROFIT'
	FROM titles t
	JOIN titleauthor ta
	ON t.title_id = ta.title_id
	JOIN authors au
	ON au.au_id = ta.au_id
	JOIN sales s
	ON t.title_id = s.title_id
GROUP BY au.au_id;*/

/*CREATE TABLE most_profiting_authors
(
au_id VARCHAR(15),
profits FLOAT
);*/

/*CREATE TABLE most_profiting_authors SELECT au.au_id AS 'AUTHOR_ID', SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS 'TOTAL PROFIT'
	FROM titles t
	JOIN titleauthor ta
	ON t.title_id = ta.title_id
	JOIN authors au
	ON au.au_id = ta.au_id
	JOIN sales s
	ON t.title_id = s.title_id
GROUP BY au.au_id;*/