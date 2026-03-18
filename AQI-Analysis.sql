-- PROJECT : INDIAN AIR QUALITY ANALYSIS 
-- AUTHOR : CHINTAKINDI JASNAVI 
-- DATE : 2026
-- DATABASE : MySQL 
-- DESCRIPTION : Analysis of AQI data across 8 major Indian cities from 2015-2023

-- Setup

create database aqi_project;
use aqi_project;
show tables;

select * from aqi_data ;

-- Q1: Which city has the highest average AQI?
select city,round(avg(aqi),2) as Avg_aqi
from aqi_data 
group by city 
order by Avg_aqi desc
limit 1;

-- Q2: What is the average AQI for each city?
 select city,round(avg(aqi),2) as Avg_aqi
from aqi_data 
group by city 
order by Avg_aqi desc;

-- How many days did each city record Poor, Very Poor or Severe air quality? 
select city , count(*) as Bad_days 
from aqi_data 
where air_quality in ('poor' , 'very poor' , 'severe') 
group by city 
order by Bad_days desc ;

-- Q4: Most common pollutant across all cities?
select city,prominent_pollutant , count(*) as Days 
from aqi_data 
group by city,prominent_pollutant 
order by Days desc ;
 
 -- Q5: Which city had the most Severe days?
 select city,count(*) as severe_days
 from aqi_data 
 where air_quality = 'severe'
 group by city 
 order by severe_days desc ;
 
 -- Intermediate Analysis 
 
 -- Average AQI per year for each city
 select city,year,round(avg(aqi),2) as Avg_aqi
from aqi_data 
group by city,year
order by city,year ;

 -- Q7: Which month has the worst average AQI?
select month_name,round(avg(aqi),2) as Avg_aqi
from aqi_data 
group by month_name 
order by Avg_aqi desc;

-- Q8: How many Good days did each city get?
 select city , count(*) as Good_days 
from aqi_data 
where air_quality = 'Good'
group by city 
order by Good_days desc ;

-- Q9: Which city improved the most from 2015 to 2023? 
select city,
round(avg(case when year = 2015 then aqi end), 2) 
    as AQI_2015,
round(avg(case when year = 2023 then aqi end), 2) 
    as AQI_2023,
round(avg(case when year = 2015 then aqi end) -
avg(case when year = 2023 then aqi end), 2) 
    as Improvement
from aqi_data
group by city
order by Improvement desc;

-- Q10: Average AQI per season for each city
 select city,season,round(avg(aqi),2) as Avg_aqi
from aqi_data 
group by city,season
order by city,Avg_aqi desc;

-- Advanced Analysis 

-- COVID lockdown impact Compare Mar-May 2019 vs Mar-May 2020 
select city,
round(avg(case when year = 2019 and month in (3,4,5) then aqi end), 2)as AQI_2019,
round(avg(case when year = 2020 and month in (3,4,5) then aqi end), 2)as AQI_2020,
round(avg(case when year = 2019 and month in  (3,4,5) then aqi end ) -
avg(case when year = 2020 and month in (3,4,5) then aqi end), 2) as Improvement
from aqi_data
group by city
order by Improvement DESC;

--  Q12: Rank cities by average AQI 
select city,round(avg(aqi),2) as Avg_aqi,
rank() over(order by avg(aqi) desc) as rank_no
from aqi_data 
group by city; 

-- Q13: Find days where AQI was above 300
select city,date,aqi 
from aqi_data 
where aqi > 300 
order by aqi desc;

-- Q14 Which year had the worst air quality?
select city,year,count(*) as Bad_days 
from aqi_data 
where air_quality in ('very poor','severe') 
group by city,year 
order by city, Bad_days desc;

-- End Of Analysis 