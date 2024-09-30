--ex1: hackerrank-more-than-75-marks.
SELECT name FROM students
WHERE marks >75
ORDER BY RIGHT(name,3), ID;

--ex2: leetcode-fix-names-in-a-table.
SELECT user_id, 
UPPER(LEFT(name,1))||LOWER(SUBSTRING(name FROM 2 FOR 10)) AS name
FROM users
ORDER BY user_id;

--ex3: datalemur-total-drugs-sales.
SELECT manufacturer,
'$'||ROUND(SUM(total_sales)/1000000,0)||' '||'million' AS total_sales
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC;

--ex4: avg-review-ratings.
SELECT EXTRACT(month FROM submit_date) AS month, product_id AS product,
ROUND(AVG(stars),2) AS avg_stars
FROM reviews
GROUP BY month, product_id
ORDER BY month, product_id;

--ex5: teams-power-users.
SELECT sender_id,
COUNT(message_id) AS message_count
FROM messages
WHERE EXTRACT (month FROM sent_date) = '8' AND EXTRACT (year FROM sent_date) = '2022'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;

--ex6: invalid-tweets.
SELECT tweet_id FROM tweets
WHERE LENGTH(content)>15;

--ex7: user-activity-for-the-past-30-days.


--ex8: number-of-hires-during-specific-time-period.
--ex9: positions-of-letter-a.
--ex10: macedonian-vintages.
