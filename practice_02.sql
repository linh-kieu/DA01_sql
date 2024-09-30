--ex1: hackerrank-weather-observation-station-3.
SELECT DISTINCT city FROM station
WHERE  id%2=0;

--ex2: hackerrank-weather-observation-station-4.
SELECT COUNT(city) - COUNT(DISTINCT city) AS difference FROM station;

--ex3: hackerrank-the-blunder.



--ex4: datalemur-alibaba-compressed-mean.
SELECT ROUND(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences) AS decimal),1) AS mean
FROM items_per_order;

--ex5: datalemur-matching-skills.
SELECT candidate_id FROM candidates
WHERE skill IN ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3;

--ex6: datalemur-verage-post-hiatus-1.
SELECT user_id, MAX(date(post_date))-MIN(date(post_date)) AS days_between
FROM posts
WHERE post_date BETWEEN '2021-01-01' AND '2022-01-01'
GROUP BY user_id
HAVING COUNT(post_id)>1;

--ex7: datalemur-cards-issued-difference.
SELECT card_name, MAX(issued_amount)-MIN(issued_amount) AS issuance_difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY issuance_difference DESC;

--ex8: datalemur-non-profitable-drugs.
SELECT manufacturer, COUNT(drug) AS drug_count, ABS(SUM(total_sales - cogs)) AS total_loss
FROM pharmacy_sales
WHERE total_sales - cogs <=0
GROUP BY manufacturer
ORDER BY total_loss DESC;

--ex9: leetcode-not-boring-movies.
SELECT * FROM cinema
WHERE id%2<>0 AND description <> 'boring'
ORDER BY rating DESC;

--ex10: leetcode-number-of-unique-subject.
SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt FROM teacher
GROUP BY teacher_id;

--ex11: leetcode-find-followers-count.
SELECT user_id, COUNT(follower_id) AS followers_count FROM followers
GROUP BY user_id
ORDER BY user_id;

--ex12:leetcode-classes-more-than-5-students.
SELECT class FROM courses
GROUP BY class
HAVING COUNT(student) >=5;
