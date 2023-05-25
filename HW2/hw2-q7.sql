--q7
SELECT SUM(F.capacity) AS capacity
FROM FLIGHTS AS F, MONTHS AS M
WHERE F.month_id = M.mid
AND M.mid = 7
AND F.day_of_month = 10
AND (F.origin_city = 'Seattle WA' and F.dest_city = 'San Francisco CA' 
OR F.origin_city = 'San Francisco CA' and F.dest_city = 'Seattle WA');
/*
capacity
680
*/
