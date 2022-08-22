---- query  for ETL  using SSIS  in SQL commond text  extract data from flate table to dimentions table 

--1-device_dim

select  distinct device_id
 from [flate table]
order by  device_id

----2-select  distinct device_id
 
 select distinct latitude,longitude
 from [flate table]
order by  latitude



------3--date dim

SELECT
    the_datetime=snapshot_datetime,
    TheDate         = CONVERT(date, snapshot_datetime),
    TheDay          = DATEPART(DAY,       snapshot_datetime),
    TheDayName      = DATENAME(WEEKDAY,   snapshot_datetime),
    TheWeek         = DATEPART(WEEK,      snapshot_datetime),
    TheISOWeek      = DATEPART(ISO_WEEK,  snapshot_datetime),
    TheDayOfWeek    = DATEPART(WEEKDAY,   snapshot_datetime),
    TheMonth        = DATEPART(MONTH,     snapshot_datetime),
    TheMonthName    = DATENAME(MONTH,     snapshot_datetime),
    TheQuarter      = DATEPART(Quarter,   snapshot_datetime),
    TheYear         = DATEPART(YEAR,      snapshot_datetime),
    TheFirstOfMonth = DATEFROMPARTS(YEAR(snapshot_datetime), MONTH(snapshot_datetime), 1),
    TheLastOfYear   = DATEFROMPARTS(YEAR(snapshot_datetime), 12, 31),
    TheDayOfYear    = DATEPART(DAYOFYEAR, snapshot_datetime),
	theHouer        =DATEPART(hour, snapshot_datetime) ,
	theminuets =DATEPART(minute, snapshot_datetime),
	theSecond =DATEPART(SECOND, snapshot_datetime)


  FROM [flate table]

  use  stagetagaddod
  go
  delete from location_dim

  ------------request_dim
  
select  distinct  destination_request_id
 from [flate table]
order by  destination_request_id

