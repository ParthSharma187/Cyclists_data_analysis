select * from Cyclistic_tripdata.dbo.cyclistic_allmonths;

select AVG(cast(dbo.cyclistic_allmonths.Ride_Length as TIME)as avg_ride_length
from dbo.cyclistic_allmonths
group by dbo.cyclistic_allmonths.member_casual;


SELECT CAST(dbo.cyclistic_allmonths.Ride_Length AS TIME) AS ride_time
FROM dbo.cyclistic_allmonths;

with cte as (
select  Cyclistic_tripdata.dbo.cyclistic_allmonths.Ride_Length
FROM Cyclistic_tripdata.dbo.cyclistic_allmonths
WHERE TRY_CONVERT(TIME, Cyclistic_tripdata.dbo.cyclistic_allmonths.Ride_Length) IS NULL )

delete from cte

--select avg(Cyclistic_tripdata.dbo.cyclistic_allmonths.Ride_Length) as avg_ride_length from cte

-- Average ride time in minutes of Members vs Causal riders
select 
Cyclistic_tripdata.dbo.cyclistic_allmonths.member_casual,
AVG(CAST(SUBSTRING(Cyclistic_tripdata.dbo.cyclistic_allmonths.Ride_Length,4,2) AS INT)) as ride_time_in_mins
from Cyclistic_tripdata.dbo.cyclistic_allmonths
group by Cyclistic_tripdata.dbo.cyclistic_allmonths.member_casual;


select count(*) from Cyclistic_tripdata.dbo.cyclistic_allmonths
where Cyclistic_tripdata.dbo.cyclistic_allmonths.Ride_Length is null;


--Finding the busiest day of the week for Annual members
select Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7 as Days_Sun1to_Sat7 , 
Count((Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7)) as Occurences
from Cyclistic_tripdata.dbo.cyclistic_allmonths
where Cyclistic_tripdata.dbo.cyclistic_allmonths.member_casual = 'member'
group by Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7
order by Occurences desc;


--Finding the busiest day of the week for Casual members
select Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7 as Days_Sun1to_Sat7 , 
Count(Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7) as Occurences
from Cyclistic_tripdata.dbo.cyclistic_allmonths
where Cyclistic_tripdata.dbo.cyclistic_allmonths.member_casual = 'casual'
group by Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7
order by Occurences desc;

--Finding the busiest day of the week for Casual members together 

select Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7 as Busiest_day_casuals
from Cyclistic_tripdata.dbo.cyclistic_allmonths
where Cyclistic_tripdata.dbo.cyclistic_allmonths.member_casual = 'casual'
group by Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7
order by Count(Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7) desc
 
select Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7 as Busiest_day_members
from Cyclistic_tripdata.dbo.cyclistic_allmonths
where Cyclistic_tripdata.dbo.cyclistic_allmonths.member_casual = 'member'
group by Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7

order by Count(Cyclistic_tripdata.dbo.cyclistic_allmonths.Weekday_1_7) desc;

-- Average distance covered member vs Casual
select Cyclistic_tripdata.dbo.cyclistic_allmonths.member_casual, 
	avg(Cyclistic_tripdata.dbo.cyclistic_allmonths.distance_covered) as Avg_kms_covered
from Cyclistic_tripdata.dbo.cyclistic_allmonths
group by Cyclistic_tripdata.dbo.cyclistic_allmonths.member_casual;

-- Most used bike. 
select Cyclistic_tripdata.dbo.cyclistic_allmonths.rideable_type, count(*)
from Cyclistic_tripdata.dbo.cyclistic_allmonths
group by Cyclistic_tripdata.dbo.cyclistic_allmonths.rideable_type;