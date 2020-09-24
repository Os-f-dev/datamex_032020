#reto1
#Seleccionar la tabla con la que se va a trabajar
/*USE pubs_1

/*SELECT authors.au_id as 'AUTHOR ID',
au_lname as 'LAST NAME',
au_fname as 'FIRST NAME',
titles.title as 'Title',
publishers.pub_name as 'Publisher'
FROM authors
LEFT JOIN titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publishers
ON titles.pub_id = publishers.pub_id
ORDER BY authors.au_id;

#reto2
SELECT authors.au_id as 'AUTHOR ID',
au_lname as 'LAST NAME',
au_fname as 'FIRST NAME',
publishers.pub_name as 'PUBLISHER',
count(titles.title) as 'TITLE COUNT'
FROM authors
LEFT JOIN titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN publishers 
ON titles.pub_id = publishers.pub_id
ORDER BY count(titles.title);*/

#Reto3
/*SELECT authors.au_id as 'AUTHOR ID',
au_lname as 'LAST NAME',
au_fname as 'FIRST NAME',
SUM(titles.ytd_sales) as 'TOTAL'
FROM authors
LEFT JOIN titleauthor
ON authors.au_id = titleauthor.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
ORDER BY SUM(titles.ytd_sales) DESC
LIMIT 3;*/

#reto4

SELECT authors.au_id as 'AUTHOR ID',
au_lname as 'LAST NAME',
au_fname as 'FIRST NAME',
SUM(titles.ytd_sales) as 'TOTAL'
FROM authors AS au
INNER JOIN titleauthor AS ta
ON authors.au_id = titleauthor.au_id
LEFT JOIN titles AS ti
ON titleauthors.title_id = titleauthor.title_id
ORDER BY SUM(titles.ytd_sales) DESC
LIMIT 23;

