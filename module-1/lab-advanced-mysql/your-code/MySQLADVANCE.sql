USE pup1;
WITH Nayib AS (
WITH Paco as (

/*Challenge 1 - Most Profiting Authors  Step 1*/
SELECT ti.title_id AS TITLE_ID, ta.au_id AS AUTHOR_ID, 
(ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100) AS ROYALTY,
advance
FROM sales as sa
LEFT JOIN titles ti USING (title_id)
LEFT JOIN titleauthor ta USING (title_id))

    
/*Step 2: Aggregate the total royalties for each title for each author*/
SELECT TITLE_ID, AUTHOR_ID, SUM(ROYALTY) AS ROYALTIES, SUM(advance) AS ADVANCE 
FROM Paco
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN sales ON titles.title_id = sales.title_id
GROUP BY titleauthor.au_id, titleauthor.title_id;

    
/*Step 3: Calculate the total profits of each author*/   
SELECT AUTHOR_ID, ROYALTIES+ADVANCE AS ROYAD
FROM Nayib
GROUP BY AUTHOR_ID
ORDER BY ROYAD DESC
LIMIT 3;


