USE pub_3
/*CHALLENGE 1*/
SELECT authors.au_id AS 'AUTHOR ID', authors.au_lname As 'LAST NAME', authors.au_fname AS 'FIRST NAME', titles.title AS 'TITLE', publishers.pub_name AS 'PUBLISHER'
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
INNER JOIN publishers ON titles.pub_id = publishers.pub_id
ORDER BY authors.au_id;

/*CHALLENGE 2*/
SELECT authors.au_id AS 'AUTHOR ID', authors.au_lname As 'LAST NAME', authors.au_fname AS 'FIRST NAME', publishers.pub_name AS 'PUBLISHER', 
count(titles.title) AS 'TITLE COUNT'
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
INNER JOIN publishers ON titles.pub_id = publishers.pub_id
GROUP BY titleauthor.au_id, publishers.pub_name
ORDER BY count(titles.title) DESC;

/*CHALLENGE 3*/
SELECT authors.au_id AS 'AUTHOR ID', authors.au_lname As 'LAST NAME', authors.au_fname AS 'FIRST NAME', 
SUM(ytd_sales) AS 'TOTAL'
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id, titleauthor.au_id
ORDER BY SUM(ytd_sales) DESC LIMIT 3;

/*CHALLENGE 4*/
SELECT authors.au_id AS 'AUTHOR ID', authors.au_lname As 'LAST NAME', authors.au_fname AS 'FIRST NAME',
IFNULL(SUM(ytd_sales), 0) AS "TOTAL"
FROM authors
LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN publishers ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id
ORDER BY SUM(ytd_sales) DESC;

/*BONUS*/
SELECT authors.au_id AS 'AUTHOR ID', authors.au_lname As 'LAST NAME', authors.au_fname AS 'FIRST NAME', 
IFNULL(((titles.advance + titles.royalty) * (titleauthor.royaltyper / 100)), 0) AS TOTAL
FROM authors
LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC LIMIT 3;