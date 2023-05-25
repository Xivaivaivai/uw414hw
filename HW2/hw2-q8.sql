--q8
SELECT C.name AS name, SUM(F.departure_delay) AS delay
FROM FLIGHTS AS F, CARRIERS AS C
WHERE F.carrier_id = C.cid
GROUP BY C.name;
/*
name	delay
ATA Airlines d/b/a ATA	38676
AirTran Airways Corporation	473993
Alaska Airlines Inc.	285111
America West Airlines Inc. (Merged with US Airways 9/05. Stopped reporting 10/07.)	173255
American Airlines Inc.	1849386
Comair Inc.	282042
Continental Air Lines Inc.	414226
Delta Air Lines Inc.	1601314
Envoy Air	771679
ExpressJet Airlines Inc.	934691
ExpressJet Airlines Inc. (1)	483171
Frontier Airlines Inc.	165126
Hawaiian Airlines Inc.	386
Independence Air	201418
JetBlue Airways	435562
Northwest Airlines Inc.	531356
SkyWest Airlines Inc.	682158
Southwest Airlines Co.	3056656
Spirit Air Lines	167894
US Airways Inc.	577268
United Air Lines Inc.	1483777
Virgin America	52597
*/
