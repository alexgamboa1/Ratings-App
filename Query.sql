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

