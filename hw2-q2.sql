--q2
SELECT C.name AS name, 
F1.flight_num AS f1_flight_num,
F1.origin_city AS f1_origin_city,
F1.dest_city AS f1_dest_city,
F1.actual_time AS f1_actual_time,
F2.flight_num AS f2_flight_num,
F2.origin_city AS f2_origin_city,
F2.dest_city AS f2_dest_city,
F2.actual_time AS f2_actual_time,
F1.actual_time + F2.actual_time AS actual_time
FROM FLIGHTS AS F1, FLIGHTS AS F2, CARRIERS AS C, MONTHS AS M
WHERE M.mid = 7
AND F1.month_id = M.mid
AND F2.month_id = M.mid
AND F1.day_of_month = 15
AND F2.day_of_month = 15
AND F1.dest_city = F2.origin_city
AND F1.origin_city = 'Seattle WA'
AND F2.dest_city = 'Boston MA'
AND F1.carrier_id = C.cid
AND F2.carrier_id = C.cid
AND F1.carrier_id = F2.carrier_id
AND (F1.actual_time + F2.actual_time) < 420;

/*
total 1472rows like this:
name	f1_flight_num	f1_origin_city	f1_dest_city	f1_actual_time	f2_flight_num	f2_origin_city	f2_dest_city	f2_actual_time	actual_time
American Airlines Inc.	198	Seattle WA	New York NY	339	84	New York NY	Boston MA	74	413
American Airlines Inc.	198	Seattle WA	New York NY	339	199	New York NY	Boston MA	80	419
American Airlines Inc.	198	Seattle WA	New York NY	339	1443	New York NY	Boston MA	80	419
American Airlines Inc.	198	Seattle WA	New York NY	339	2118	New York NY	Boston MA	0	339
American Airlines Inc.	198	Seattle WA	New York NY	339	2121	New York NY	Boston MA	74	413
American Airlines Inc.	198	Seattle WA	New York NY	339	2122	New York NY	Boston MA	65	404
American Airlines Inc.	198	Seattle WA	New York NY	339	2126	New York NY	Boston MA	60	399
American Airlines Inc.	198	Seattle WA	New York NY	339	2131	New York NY	Boston MA	70	409
American Airlines Inc.	198	Seattle WA	New York NY	339	2136	New York NY	Boston MA	63	402
American Airlines Inc.	198	Seattle WA	New York NY	339	2141	New York NY	Boston MA	57	396
American Airlines Inc.	198	Seattle WA	New York NY	339	2146	New York NY	Boston MA	60	399
American Airlines Inc.	198	Seattle WA	New York NY	339	2152	New York NY	Boston MA	69	408
American Airlines Inc.	198	Seattle WA	New York NY	339	2156	New York NY	Boston MA	79	418
American Airlines Inc.	198	Seattle WA	New York NY	339	2158	New York NY	Boston MA	67	406
American Airlines Inc.	198	Seattle WA	New York NY	339	2162	New York NY	Boston MA	0	339
American Airlines Inc.	198	Seattle WA	New York NY	339	2168	New York NY	Boston MA	54	393
American Airlines Inc.	198	Seattle WA	New York NY	339	2172	New York NY	Boston MA	80	419
*/