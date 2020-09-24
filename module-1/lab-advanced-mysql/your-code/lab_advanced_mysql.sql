/*USE publications;*/

#Reto 1
/*SELECT tituloautor.title_id AS TITLE_ID, au_id AS AUTHOR_ID, 
titulos.price * ventas.qty * titulos.royalty / 100 * tituloautor.royaltyper / 100 AS sales_royalty
FROM titleauthor AS tituloautor
INNER JOIN titles AS titulos
ON tituloautor.title_id = titulos.title_id
INNER JOIN sales AS ventas
ON  ventas.title_id=tituloautor.title_id;


CREATE TEMPORARY TABLE publications.temp
SELECT tituloautor.title_id AS TITLE_ID, au_id AS AUTHOR_ID, 
titulos.price * ventas.qty * titulos.royalty / 100 * tituloautor.royaltyper / 100 AS sales_royalty
FROM titleauthor AS tituloautor
INNER JOIN titles AS titulos
ON tituloautor.title_id = titulos.title_id
INNER JOIN sales AS ventas
ON  ventas.title_id = tituloautor.title_id;	

SELECT TITLE_ID, AUTHOR_ID, sum(sales_royalty) AS AGG_ROYALTIES 
FROM temp GROUP BY AUTHOR_ID, TITLE_ID;


SELECT TITLE_ID, AUTHOR_ID, sum(sales_royalty) AS AGG_ROYALTIES
FROM temp GROUP BY AUTHOR_ID, TITLE_ID 
ORDER BY AGG_ROYALTIES DESC LIMIT 3;


#Reto 2
SELECT TITLE_ID, AUTHOR_ID, sum(sales_royalty) AS AGG_ROYALTIES 
FROM (SELECT tituloautor.title_id AS TITLE_ID, au_id AS AUTHOR_ID, 
titulos.price * ventas.qty * titulos.royalty / 100 * tituloautor.royaltyper / 100 AS sales_royalty
FROM titleauthor AS tituloautor
INNER JOIN  titles AS titulos
ON tituloautor.title_id = titulos.title_id
INNER JOIN sales AS ventas
ON  ventas.title_id = tituloautor.title_id) AS VT
GROUP BY AUTHOR_ID, TITLE_ID 
ORDER BY AGG_ROYALTIES DESC LIMIT 3;*/


#Reto 3
CREATE TABLE publications.most_profiting_authors
SELECT TITLE_ID, sum(sales_royalty) AS profits
FROM stp2 GROUP BY AUTHOR_ID, TITLE_ID 
ORDER BY profits DESC;
