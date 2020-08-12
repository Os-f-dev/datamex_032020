SELECT authors.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME",
COALESCE(titles.advance+(titles.ytd_sales*titles.price)*
(titles.royalty*titleauthor.royaltyper/100),0) as TOTAL
FROM authors
LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY  TOTAL DESC
LIMIT 3