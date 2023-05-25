--q4
SELECT DISTINCT C.name AS name
FROM FLIGHTS AS F, CARRIERS AS C, MONTHS AS M
WHERE F.carrier_id = C.cid
AND F.month_id = M.mid
GROUP BY M.mid, F.day_of_month, C.name
HAVING COUNT(C.name) > 1000;
/*
name
American Airlines Inc.
Comair Inc.
Delta Air Lines Inc.
Envoy Air
ExpressJet Airlines Inc.
ExpressJet Airlines Inc. (1)
JetBlue Airways
Northwest Airlines Inc.
SkyWest Airlines Inc.
Southwest Airlines Co.
US Airways Inc.
United Air Lines Inc.
*/