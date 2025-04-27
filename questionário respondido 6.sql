--1
select * from traffic_accidents ta 

--2
select * from traffic_accidents ta 
where ta.weather_condition = 'CLEAR'

--3
select count(traffic_control_device)
from traffic_accidents ta 

--4
select prim_contributory_cause, count(injuries_total) feridos
from traffic_accidents ta 
group by prim_contributory_cause 
order by feridos desc
limit 5

--5
select lighting_condition 
from traffic_accidents ta
where lighting_condition = 'DAYLIGHT'
OR lighting_condition = 'DARKNESS, LIGHTED ROAD'

--6
select crash_type, avg(num_units) 
from traffic_accidents ta
group by crash_type

--7
select trafficway_type, count(damage) danos
from traffic_accidents ta 
group by ta.trafficway_type
order by danos desc

--8
select first_crash_type, sum(injuries_total) feridos
from traffic_accidents ta
group by first_crash_type 
order by feridos desc

--9
select crash_date, prim_contributory_cause, road_defect
from traffic_accidents ta 
where not road_defect = 'NO DEFECTS'

--10
select crash_type, most_severe_injury
from traffic_accidents ta 
group by most_severe_injury, crash_type
having count(most_severe_injury) > 1000

--11
select count(injuries_total) feridos
from traffic_accidents ta 
where crash_day_of_week = '1'
or crash_month = '1'

--12
select alignment, roadway_surface_cond
from traffic_accidents ta 
where intersection_related_i = 'Y'

--13
select weather_condition, sum(injuries_incapacitating) feridos_incapacitados
from traffic_accidents ta 
group by ta.weather_condition
order by feridos_incapacitados desc

--14
select crash_hour, count(injuries_total)
from traffic_accidents ta 
group by crash_hour

--15
select damage, avg(injuries_total)
from traffic_accidents ta 
where not damage = 'UNKNOWN'
group by damage 
