/**********************************************************************
 * NAME: Noemi Turner
 * CLASS: CPSC 321
 * DATE: Fall 2022
 * DESCRIPTION: Project Queries
 **********************************************************************/

 -- Get's the number of subscribers for a specific podcast (i.e. Conan O'Brien Needs a Friend)
SELECT COUNT(*)
FROM podcast JOIN subscriber USING (podcast_id)
WHERE title = "Conan O'Brien Needs a Friend";

-- get the number of member listeners for each episode
SELECT e.episode_id, e.title, COUNT(*) AS avg_num_listeners
FROM listener l JOIN episode e USING (episode_id)
GROUP BY e.episode_id
ORDER BY COUNT(*), e.title ASC;

-- Find the team coco members who live in california (The postal code range goes from 90001 to 96162).
-- And who subscribe to 5 or more podcasts
SELECT member_id, first_name, last_name, email
FROM subscriber JOIN member USING (member_id)
WHERE zip_code >= 90001 AND zip_code <= 96162
GROUP BY member_id
HAVING COUNT(podcast_id) >= 5
ORDER BY first_name ASC, last_name ASC;

-- Find the names of the most recent episodes 
SELECT episode_id, title, podcast_id
FROM episode
WHERE release_date >= ALL(SELECT release_date
                          FROM episode);


-- Finds the members who have re-listened to certain episodes more than anyone else -> aka super fans
SELECT m.member_id, m.first_name, m.last_name, l.episode_id, e.title, l.total_num_plays, SUM(e.runtime)
FROM member m JOIN listener l USING (member_id)
              JOIN episode e USING (episode_id)
GROUP BY l.episode_id
HAVING total_num_plays = (SELECT MAX(total_num_plays)
                            FROM listener);



-- Includes all members who subscribe to podcasts and members who do not subscribe to any podcasts
-- Why this is relevant: To compare these different subsets of people and see if there is any correlation
-- as to why people don't subscribe to podcasts they listen to
SELECT *
FROM member m LEFT OUTER JOIN subscriber s ON (m.member_id = s.member_id);



-- Gets the members who listen to and subscribe to team coco podcasts
-- This is useful because some people (i.e. me :) ) subscribe to a lot 
-- of different shows, but don't usually listen to all of the shows they subscribe to
(SELECT member_id FROM subscriber)
UNION
(SELECT member_id FROM listener);



-- This query categorizes which states subscribers are from based on their zipcode
SELECT member_id, first_name, last_name,
CASE
WHEN zip_code >= 98001 AND zip_code <= 99403 THEN "Washington"
WHEN zip_code >= 97001 AND zip_code <= 97920 THEN "Oregon"
WHEN zip_code >= 90001 AND zip_code <= 96162 THEN "California"
ELSE "other"
END AS state_from_zipcode
FROM member
ORDER BY last_name ASC, first_name ASC, state_from_zipcode ASC;


-- This query finds the top-k most popular episodes by the number of individual listeners they each have
SELECT e.episode_id, e.title, p.podcast_id, p.title, 
DENSE_RANK() OVER (PARTITION BY episode_id ORDER BY COUNT(member_id) DESC)
AS episode_rank 
FROM listener l JOIN episode e USING (episode_id)
              JOIN podcast p USING (podcast_id);


-- ranks the episodes by the total number of times they have been played
WITH episode_num_plays AS (
SELECT episode_id, SUM(total_num_plays) AS number_of_times_played
FROM listener
GROUP BY episode_id
)
SELECT episode_id, title,
DENSE_RANK() OVER (PARTITION BY episode_id ORDER BY number_of_times_played DESC)
AS episode_num_plays_rank
FROM episode_num_plays JOIN episode USING (episode_id);
