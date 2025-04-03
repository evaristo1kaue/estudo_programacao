--1
SELECT weather_condition, COUNT(*) total_accidents
FROM traffic_accidents ta 
GROUP BY weather_condition
HAVING COUNT(*) > 100
ORDER BY total_accidents DESC

--2
SELECT crash_day_of_week, COUNT(*) total_accidents
FROM traffic_accidents ta 
GROUP BY crash_day_of_week
HAVING COUNT(*) > 500
ORDER BY total_accidents DESC

--3
SELECT lighting_condition, COUNT(*) total_accidents
FROM traffic_accidents ta 
GROUP BY lighting_condition
HAVING COUNT(*) > 200
ORDER BY total_accidents DESC

--4
SELECT trafficway_type, COUNT(*) total_accidents
FROM traffic_accidents ta 
GROUP BY trafficway_type
HAVING COUNT(*) > 300
ORDER BY total_accidents DESC

--5
SELECT crash_month, COUNT(injuries_fatal) total_accidents
FROM traffic_accidents ta 
GROUP BY crash_month
HAVING COUNT(*) > 10
ORDER BY total_accidents DESC
