--1
SELECT crash_month, COUNT(*) total_crash
FROM traffic_accidents ta 
GROUP BY crash_month
HAVING COUNT(*) > 200
ORDER BY total_crash DESC;

--2
SELECT first_crash_type, COUNT(*) total_crash
FROM traffic_accidents ta 
GROUP BY first_crash_type
HAVING COUNT(*) > 150
ORDER BY total_crash DESC;

--3
SELECT roadway_surface_cond, COUNT(*) total_crash
FROM traffic_accidents ta 
GROUP BY roadway_surface_cond
HAVING COUNT(*) > 300
ORDER BY total_crash DESC;

--4
SELECT traffic_control_device, COUNT(*) total_crash
FROM traffic_accidents ta 
GROUP BY traffic_control_device
HAVING COUNT(*) > 250
ORDER BY total_crash DESC;

--5
SELECT lighting_condition, COUNT(*) total_crash
FROM traffic_accidents ta 
GROUP BY lighting_condition
HAVING COUNT(*) > 100
ORDER BY total_crash DESC;

--6
SELECT crash_hour, COUNT(*) total_crash
FROM traffic_accidents ta 
GROUP BY crash_hour
HAVING COUNT(*) > 400
ORDER BY total_crash DESC;

--7
SELECT trafficway_type, COUNT(*) total_crash
FROM traffic_accidents ta 
GROUP BY trafficway_type
HAVING COUNT(*) > 500
ORDER BY total_crash DESC;

--8
SELECT first_crash_type, COUNT(injuries_total) total_injuries
FROM traffic_accidents ta 
GROUP BY first_crash_type
HAVING COUNT(*) > 50
ORDER BY total_injuries DESC;

--9
SELECT weather_condition, COUNT(injuries_fatal) total_injuries
FROM traffic_accidents ta 
GROUP BY weather_condition
HAVING COUNT(*) > 5
ORDER BY total_injuries DESC;

--10
SELECT lighting_condition, COUNT(injuries_incapacitating) total_injuries
FROM traffic_accidents ta 
GROUP BY lighting_condition
HAVING COUNT(*) > 20
ORDER BY total_injuries DESC;

--11
SELECT weather_condition, COUNT(lighting_condition) total_crash
FROM traffic_accidents ta 
GROUP BY weather_condition
HAVING COUNT(*) > 200
ORDER BY total_crash DESC;

--12
SELECT crash_day_of_week, COUNT(injuries_non_incapacitating) total_crash
FROM traffic_accidents ta 
GROUP BY crash_day_of_week
HAVING COUNT(*) > 50
ORDER BY total_crash DESC;

--13
SELECT trafficway_type, COUNT(injuries_fatal) total_injuries
FROM traffic_accidents ta 
GROUP BY trafficway_type
HAVING COUNT(*) > 10
ORDER BY total_injuries DESC;

--14
SELECT crash_day_of_week, COUNT(roadway_surface_cond) total_crash
FROM traffic_accidents ta 
WHERE roadway_surface_cond = 'WET'
GROUP BY crash_day_of_week
HAVING COUNT(*) > 50
ORDER BY total_crash DESC;

--15
SELECT crash_month, COUNT(injuries_total) total_injuries
FROM traffic_accidents ta 
GROUP BY crash_month
HAVING COUNT(*) > 100
ORDER BY total_injuries DESC;

--16
SELECT crash_hour, COUNT(injuries_fatal) total_injuries
FROM traffic_accidents ta 
GROUP BY crash_hour
HAVING COUNT(*) > 5
ORDER BY total_injuries DESC;

--17
SELECT 
	weather_condition, 
	lighting_condition, 
	roadway_surface_cond,
	COUNT(injuries_total) total_injuries
FROM traffic_accidents ta 
GROUP BY 
	weather_condition,
 	lighting_condition,
 	roadway_surface_cond
HAVING 
	COUNT(*) > 50
ORDER BY 
	total_injuries DESC;

--18
SELECT
  crash_month,
  sum(injuries_total) total_injuries,
  sum(injuries_fatal) total_injuries_fatal
FROM
  traffic_accidents ta
GROUP BY
  crash_month
ORDER BY total_injuries DESC

--19
SELECT
	crash_day_of_week,
	sum(injuries_fatal) injuries_fatal,
	sum(injuries_non_incapacitating) injuries_non_incapacitating
FROM
	traffic_accidents ta
GROUP BY
	crash_day_of_week
ORDER BY injuries_fatal DESC

--20
SELECT crash_hour, 
sum(injuries_fatal) injuries_fatal,
sum(injuries_incapacitating) injuries_incapacitating,
sum(injuries_total) injuries_total
FROM traffic_accidents ta 
group by crash_hour
