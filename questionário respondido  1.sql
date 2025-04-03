-- 1
select crash_date, crash_hour, crash_day_of_week
from traffic_accidents ta

-- 2
select * from traffic_accidents ta
where crash_date like '07/29/2023%'

-- 3
select * from traffic_accidents
where lighting_condition = 'DARKNESS'

-- 4
select COUNT(*) from traffic_accidents ta

-- 5
select count(weather_condition) from traffic_accidents ta

-- 6
select first_crash_type st,COUNT(first_crash_type) quantidade_acidentes
from traffic_accidents ta
group by st
LIMIT 1

-- 7
select count(crash_day_of_week ) 
from traffic_accidents ta

-- 8
select crash_type, ROUND(AVG(num_units)) media_acidentes
from traffic_accidents
group by crash_type

-- 9
SELECT * FROM traffic_accidents ta 
WHERE injuries_fatal > '0'

-- 10

SELECT prim_contributory_cause causa_primaria, COUNT(injuries_incapacitating ) incapacitados
FROM traffic_accidents 
WHERE injuries_incapacitating > '0.0' 
GROUP BY prim_contributory_cause 
ORDER BY incapacitados desc
LIMIT 5;

-- 11
SELECT crash_hour, avg(injuries_total) injuries_media
FROM traffic_accidents
GROUP BY crash_hour
ORDER BY crash_hour asc

-- 12
SELECT crash_day_of_week, COUNT(*) 
FROM traffic_accidents 
WHERE intersection_related_i = 'Y' 
GROUP BY crash_day_of_week 

-- 13
SELECT traffic_control_device, COUNT(*) 
FROM traffic_accidents 
WHERE damage = 'OVER $1,500' 
GROUP BY traffic_control_device*/
