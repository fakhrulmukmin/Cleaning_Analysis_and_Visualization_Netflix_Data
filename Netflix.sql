use [Porto 2]

SELECT * 
FROM [dbo].[netflix]

-- The show_id column is the unique id for the dataset, check for duplicates

SELECT show_id, COUNT(*)                                                                                                                                                                            
FROM netflix 
GROUP BY show_id                                                                                                                                                                                            
ORDER BY show_id DESC;

SELECT 
    COUNT(CASE WHEN [show_id] IS NULL THEN 1 END) AS showid_nulls,
    COUNT(CASE WHEN [type] IS NULL THEN 1 END) AS type_nulls,
    COUNT(CASE WHEN [title] IS NULL THEN 1 END) AS title_nulls,
    COUNT(CASE WHEN [director] IS NULL THEN 1 END) AS director_nulls,
	COUNT(CASE WHEN [cast] IS NULL THEN 1 END) AS director_nulls,
    COUNT(CASE WHEN [country] IS NULL THEN 1 END) AS country_nulls,
    COUNT(CASE WHEN [date_added] IS NULL THEN 1 END) AS date_added_nulls,
    COUNT(CASE WHEN [release_year] IS NULL THEN 1 END) AS release_year_nulls,
    COUNT(CASE WHEN [rating] IS NULL THEN 1 END) AS rating_nulls,
    COUNT(CASE WHEN [duration] IS NULL THEN 1 END) AS duration_nulls,
    COUNT(CASE WHEN [listed_in] IS NULL THEN 1 END) AS listed_in_nulls,
	COUNT(CASE WHEN [description] IS NULL THEN 1 END) AS description_nulls
FROM [dbo].[netflix];

/* 
We can see that there are NULLS. 
director_nulls = 2634
movie_cast_nulls = 825
country_nulls = 831
date_added_nulls = 10
rating_nulls = 4
duration_nulls = 3 
*/

WITH cte AS
(
SELECT [title], CONCAT([director],'---',[cast]) AS director_cast 
FROM netflix
)

SELECT director_cast, COUNT(*) AS count
FROM cte
GROUP BY director_cast
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

/* With this, we can now populate NULL rows in directors 
using their record with movie_cast */

UPDATE netflix 
SET director = 'Alastair Fothergill'
WHERE cast = 'David Attenborough'
AND director IS NULL ;

--Repeat this step to populate the rest of the director nulls
--Populate the rest of the NULL in director as "Not Given"

UPDATE netflix 
SET director = 'Not Given'
WHERE director IS NULL;

--When I was doing this, I found a less complex and faster way to populate a column which I will use next

--Populate the country using the director column

SELECT COALESCE(nt.country,nt2.country) 
FROM netflix  AS nt
JOIN netflix AS nt2 
ON nt.director = nt2.director 
AND nt.show_id <> nt2.show_id
WHERE nt.country IS NULL;

UPDATE netflix
SET country = nt2.country
FROM netflix AS nt2
WHERE netflix.director = nt2.director and netflix.show_id <> nt2.show_id 
AND netflix.country IS NULL;

UPDATE n
SET country = nt2.country
FROM netflix AS n
JOIN netflix AS nt2
    ON n.director = nt2.director
    AND n.show_id <> nt2.show_id
WHERE n.country IS NULL;


--To confirm if there are still directors linked to country that refuse to update

SELECT director, country, date_added
FROM netflix
WHERE country IS NULL;

--Populate the rest of the NULL in director as "Not Given"

UPDATE netflix 
SET country = 'Not Given'
WHERE country IS NULL;


--Show date_added nulls

SELECT show_id, date_added
FROM netflix
WHERE date_added IS NULL;

--DELETE nulls

DELETE FROM netflix
WHERE show_id 
IN ('6797', 's6067', 's6175', 's6807', 's6902', 's7255', 's7197', 's7407', 's7848', 's8183');

--Show rating NULLS

SELECT show_id, rating
FROM netflix
WHERE date_added IS NULL;

--Delete the nulls, and show deleted fields
DELETE FROM netflix 
WHERE show_id 
IN (SELECT show_id FROM netflix WHERE rating IS NULL);

DELETE FROM netflix 
WHERE show_id 
IN (SELECT show_id FROM netflix WHERE duration IS NULL);

SELECT 
    COUNT(CASE WHEN [show_id] IS NULL THEN 1 END) AS showid_nulls,
    COUNT(CASE WHEN [type] IS NULL THEN 1 END) AS type_nulls,
    COUNT(CASE WHEN [title] IS NULL THEN 1 END) AS title_nulls,
    COUNT(CASE WHEN [director] IS NULL THEN 1 END) AS director_nulls,
	COUNT(CASE WHEN [cast] IS NULL THEN 1 END) AS director_nulls,
    COUNT(CASE WHEN [country] IS NULL THEN 1 END) AS country_nulls,
    COUNT(CASE WHEN [date_added] IS NULL THEN 1 END) AS date_added_nulls,
    COUNT(CASE WHEN [release_year] IS NULL THEN 1 END) AS release_year_nulls,
    COUNT(CASE WHEN [rating] IS NULL THEN 1 END) AS rating_nulls,
    COUNT(CASE WHEN [duration] IS NULL THEN 1 END) AS duration_nulls,
    COUNT(CASE WHEN [listed_in] IS NULL THEN 1 END) AS listed_in_nulls,
	COUNT(CASE WHEN [description] IS NULL THEN 1 END) AS description_nulls
FROM [dbo].[netflix];

--DROP unneeded columns

ALTER TABLE netflix
DROP COLUMN [cast]


ALTER TABLE netflix
DROP COLUMN [description];

UPDATE netflix
SET country1 = LEFT(country, CHARINDEX(',', country + ',') - 1);

select * from netflix

--Delete column
ALTER TABLE netflix 
DROP COLUMN country;

EXEC sp_rename 'dbo.netflix.country1', 'country', 'COLUMN';

