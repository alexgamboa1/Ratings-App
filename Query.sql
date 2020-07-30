-- TV Rating App 

-- Return the TV show with rating but only if it has been rated. 

SELECT title, rating
FROM series JOIN reviews ON series.id = reviews.series_id
ORDER BY title; 

-- Return the title and average ratingfor each show with lowest rating at the top. 

