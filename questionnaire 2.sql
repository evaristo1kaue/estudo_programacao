/* 
--1)

SELECT first_crash_type, COUNT(*) quantidade 
FROM traffic_accidents ta
GROUP BY first_crash_type 
ORDER BY quantidade DESC
LIMIT 10

--2)

SELECT crash_month , count(*) quantidade
FROM traffic_accidents
GROUP BY crash_month
ORDER BY quantidade DESC

--3)

SELECT weather_condition, COUNT(*) quantidade
FROM traffic_accidents
GROUP BY weather_condition
ORDER BY quantidade DESC

--4)

SELECT injuries_total, count(*) quantidade
FROM traffic_accidents
GROUP BY injuries_total
ORDER BY quantidade DESC

--5)

SELECT lighting_condition, count(*) quantidade
from traffic_accidents ta
WHERE lighting_condition = 'DARKNESS'
GROUP BY lighting_condition

--6)

SELECT traffic_control_device, sum(injuries_fatal)
FROM traffic_accidents ta
GROUP BY traffic_control_device

--7)

SELECT AVG(injuries_total)
from traffic_accidents ta 

--8)

SELECT road_defect, COUNT(most_severe_injury) ferida_severa
FROM traffic_accidents ta 
GROUP BY road_defect 
ORDER BY ferida_severa DESC
LIMIT 3

--9)

SELECT crash_day_of_week, count(*) QUANTIDADE
FROM traffic_accidents ta 
GROUP BY crash_day_of_week
ORDER BY QUANTIDADE DESC
LIMIT 5

--10)

SELECT alignment, COUNT(*) quantidade
from traffic_accidents ta 
GROUP BY alignment
ORDER BY quantidade DESC

--11)

SELECT trafficway_type, lighting_condition, weather_condition, 
COUNT(*) AS total_acidentes
FROM traffic_accidents
GROUP BY trafficway_type, lighting_condition, weather_condition
ORDER BY total_acidentes DESC;
*/