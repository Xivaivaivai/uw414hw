--q3
SELECT W.day_of_week AS day_of_week, AVG(F.arrival_delay) AS delay
FROM WEEKDAYS AS W, FLIGHTS AS F
WHERE F.day_of_week_id = W.did
GROUP BY W.did
ORDER BY AVG(F.arrival_delay) DESC
LIMIT 1;
/* 
day_of_week	delay
Friday	14.4725010477787
*/
