USE pub_3
/*STEP 1*/
SELECT titleauthor.title_id AS 'TITLE ID', titleauthor.au_id AS 'AUTHOR ID',
(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
FROM titleauthor
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN sales ON titles.title_id = sales.title_id
ORDER BY sales_royalty DESC;

/*STEP 2*/
SELECT titleauthor.title_id AS "TITLE ID", titleauthor.au_id AS "AUTHOR ID",
SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sum_sales_royalty
FROM titleauthor
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN sales ON titles.title_id = sales.title_id
GROUP BY titleauthor.au_id, titleauthor.title_id
ORDER BY sum_sales_royalty DESC;

/*STEP 3*/
SELECT profit.au_id AS "AUTHOR ID", SUM(profit.advance + sum_royalties) AS final_profit
FROM (SELECT total.title_id, total.au_id, total.advance, SUM(sales_royalty) AS sum_royalties
	 FROM (SELECT titles.title_id, authors.au_id, titles.advance, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty
                    FROM titles
					JOIN titleauthor ON titles.title_id = titleauthor.title_id
					JOIN sales ON titles.title_id = sales.title_id
					JOIN authors ON titleauthor.au_id = authors.au_id)AS total
	 GROUP BY au_id, title_id) AS profit
GROUP BY profit.au_id
ORDER BY final_profit DESC LIMIT 3;
      
/*No se realiza Challenge 2 y Challenge 3 al ser indicadas como actividades bono*/ 




