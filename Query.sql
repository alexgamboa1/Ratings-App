-- TV Rating App 

-- Return the TV show with rating but only if it has been rated. 

SELECT title, rating
FROM series JOIN reviews ON series.id = reviews.series_id
ORDER BY title; 

-- Return the title and average ratingfor each show with lowest rating at the top. 

SELECT title, AVG(rating) AS avg_rating
FROM series JOIN reviews ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;

-- Return table of reviewers name and rating

SELECT first_name, last_name, rating
FROM reviewers JOIN reviews ON reviewers.id = reviews.reviewer_id;

-- Return the Tv shows that are not reviewed and label them in your table. 

SELECT title, rating AS unreviewed_series
FROM series LEFT JOIN reviews ON series.id = reviews.series_id WHERE reviews.rating IS NULL;


-- Return the Genre and the avg rating per genre. Make sure to order by Genre.

SELECT genre, AVG(rating) as avg_rating
FROM series JOIN reviews ON series.id = reviews.series_id
GROUP BY genre ORDER BY avg_rating;


-- Return the name of the reviewer, the amount of reviews given by the reviewer, min, max, and avg rating, and status. 
-- The active status is based off if they have left a review or not use Active or NON ACTIVE. 

SELECT first_name, last_name, 
		COUNT(rating) AS COUNT, 
        IFNULL(MIN(rating),0) AS MIN, 
        IFNULL(MAX(rating),0) AS MAX, 
        ROUND(IFNULL(AVG(rating),0)) AS AVG,
        CASE 
			WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
            ELSE 'NON ACTIVE'
        END AS STATUS
FROM reviewers LEFT JOIN reviews on reviewers.id = reviews.reviewer_id 
GROUP BY reviewers.id;











