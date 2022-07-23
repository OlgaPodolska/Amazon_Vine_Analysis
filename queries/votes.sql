DROP TABLE IF EXISTS popular_votes;
SELECT review_id, total_votes , helpful_votes, vine, star_rating
INTO popular_votes
FROM vine_table 
WHERE (total_votes) >=20 
AND CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

SELECT * FROM popular_votes;

SELECT review_id, total_votes , helpful_votes, vine, star_rating
INTO paid_votes
FROM popular_votes
WHERE vine = 'Y';

SELECT COUNT (review_id) AS "Total number of paid reviews"
FROM paid_votes;
SELECT COUNT (review_id) AS "Total paid 5-star reviews"
FROM paid_votes
WHERE star_rating = 5;

SELECT review_id, total_votes , helpful_votes, vine, star_rating
INTO paid_votes
FROM popular_votes
WHERE vine == 'N';

SELECT COUNT (review_id) AS "Total number of unpaid reviews"
FROM unpaid_votes;
SELECT COUNT (review_id) AS "Total unpaid 5-star reviews"
FROM unpaid_votes
WHERE star_rating = 5;
