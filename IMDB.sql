IMDB:

--Find the minimum and the maximum age of the actors per gender.--
SELECT MIN(age), MAX(age), gender FROM imdb.actors GROUP BY gender;

--Find how many actors are in their 20’s, 30’s, 40’s, 50’s etc (grouped by decade).--
SELECT age - mod(age, 10) as age_as_decade, count(0)
FROM imdb.actors GROUP BY age_as_decade ORDER BY age_as_decade;

--Print the names and biographies of the actors in this format “ANNE HATHAWAY BIO: 1 golden globe”--
SELECT concat(upper(fname),' ',upper(lname),' ','BIO: ',lower(biography)) AS BIO
FROM actors;

--Find the names of the directors who have more than 2 films in the database.--
?

