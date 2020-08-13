USE pubs1;
WITH paco AS (
WITH capi as (
SELECT ti.title_id AS TITLE_ID, ta.au_id AS AUTHOR_ID, 
(ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100) AS ROYALTY,
advance
FROM sales as sa
LEFT JOIN titles ti USING (title_id)
LEFT JOIN titleauthor ta USING (title_id))
SELECT TITLE_ID, AUTHOR_ID, SUM(ROYALTY) AS ROYALTIES, SUM(advance) AS ADVANCE FROM capi
GROUP BY TITLE_ID, AUTHOR_ID)
SELECT AUTHOR_ID, ROYALTIES+ADVANCE AS ROYAD
FROM paco
GROUP BY AUTHOR_ID
ORDER BY ROYAD DESC
LIMIT 3;