--1
SELECT title, date_added FROM netflix_titles
WHERE date_added like '% 2020'

--2
SELECT director, title, rating 
FROM netflix_titles nt
WHERE rating = 'PG-13'

--3
SELECT title
FROM netflix_titles nt 
WHERE type = 'Movie'
AND title LIKE '%Secret%'
AND release % 2 = 0

--4
SELECT listed_in, duration
FROM netflix_titles
WHERE type = 'Movie' 
AND duration LIKE '%min'

--5
SELECT title, date_added, listed_in 
FROM netflix_titles nt
WHERE date_added like 'July%'
AND date_added like '%2019'
AND type = 'Movie'

--6
SELECT title, release_year, rating, duration, listed_in
FROM netflix_titles nt 
WHERE title like '%Love%'
OR listed_in like '%Romance%'
OR listed_in like '%Romantic%'
AND type = 'Movie'