/* Escreva uma consulta SQL para selecionar todas as colunas e linhas da 
tabela traffic_accidents.
select * from traffic_accidents ta

-- Questão 2 F
select crash_date, crash_hour, crash_day_of_week
from traffic_accidents ta

-- Questão 3 F
select * from traffic_accidents ta
where crash_date like '07/29/2023%'

-- Questão 4 F
select * from traffic_accidents
where lighting_condition = 'DARKNESS'

-- Questão 5 F
select COUNT(*) from traffic_accidents ta

-- Questão 1 M
select count(weather_condition) from traffic_accidents ta

-- Questão 2 M
select first_crash_type st,COUNT(first_crash_type) quantidade_acidentes
from traffic_accidents ta
group by st
LIMIT 1

-- Questão 3 M
--select count(crash_day_of_week ) 
--from traffic_accidents ta

-- Questão 4 M
/*select crash_type, ROUND(AVG(num_units)) media_acidentes
from traffic_accidents
group by crash_type

-- Questão 5 M
SELECT * FROM traffic_accidents ta 
WHERE injuries_fatal > '0'

-- Questão 1 D

SELECT prim_contributory_cause causa_primaria, COUNT(injuries_incapacitating ) incapacitados
FROM traffic_accidents 
WHERE injuries_incapacitating > '0.0' 
GROUP BY prim_contributory_cause 
ORDER BY incapacitados desc
LIMIT 5;

SELECT prim_contributory_cause, injuries_incapacitating  
FROM traffic_accidents ta
WHERE injuries_incapacitating > '0.0'

-- Questão 2 D
SELECT crash_hour, avg(injuries_total) injuries_media
FROM traffic_accidents
GROUP BY crash_hour
ORDER BY crash_hour asc

-- Questão 3 D
SELECT crash_day_of_week, COUNT(*) 
FROM traffic_accidents 
WHERE intersection_related_i = 'Y' 
GROUP BY crash_day_of_week 

-- Questão 4 D
SELECT traffic_control_device, COUNT(*) 
FROM traffic_accidents 
WHERE damage = 'OVER $1,500' 
GROUP BY traffic_control_device*/