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
--ex4: avg-review-ratings.
--ex5: teams-power-users.
--ex6: invalid-tweets.
--ex7: user-activity-for-the-past-30-days.
--ex8: number-of-hires-during-specific-time-period.
--ex9: positions-of-letter-a.
--ex10: macedonian-vintages.
