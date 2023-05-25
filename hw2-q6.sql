--q6
SELECT DISTINCT C.name AS carrier, MAX(F.price) AS max_price
FROM FLIGHTS AS F, CARRIERS AS C
WHERE F.carrier_id = C.cid
AND ((F.origin_city = 'Seattle WA' AND F.dest_city = 'New York NY') OR (F.origin_city = 'New York NY' AND F.dest_city = 'Seattle WA'))
GROUP BY C.name;
/*
carrier	max_price
American Airlines Inc.	991
Delta Air Lines Inc.	999
JetBlue Airways	996
*/