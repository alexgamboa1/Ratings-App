-- Challenge 1 
-- Find the TV Show with the rating only if they have been rated.
SELECT * FROM series;

SELECT * FROM reviews;

SELECT * FROM series JOIN reviews ON series.id = reviews.series_id;

SELECT title,rating
 FROM series JOIN reviews ON series.id = reviews.series_id;
 
 -- 2 
 -- title and avg rating 
 
 SELECT title, AVG(rating) as avg_rating FROM series JOIN reviews ON series.id = reviews.series_id
-- need to use a groupby 
GROUP BY series.id ORDER BY avg_rating ASC;

-- 3 create reviews info name and rating. descending last name
SELECT first_name, last_name, rating
FROM reviewers JOIN reviews ON reviewers.id = reviews.reviewer_id;



