--q5
SELECT C.name AS name, AVG(F.canceled)*100 AS percentage
FROM FLIGHTS AS F, CARRIERS AS C
WHERE F.carrier_id = C.cid
AND F.origin_city = 'Seattle WA'
GROUP BY C.name
HAVING AVG(F.canceled) > 0.005
ORDER BY AVG(F.canceled);
/*
name	percentage
SkyWest Airlines Inc.	0.728291316526611
Frontier Airlines Inc.	0.840336134453782
United Air Lines Inc.	0.983767830791933
JetBlue Airways	1.00250626566416
Northwest Airlines Inc.	1.4336917562724
ExpressJet Airlines Inc.	3.2258064516129
*/