

---import data from 4 json files  to  4 tables 


go
Declare @json  Varchar(max)
select @json =r.BulkColumn
from  OPENROWSET (BULK 'C:\Users\win10\Desktop\tagaddod\Tasks\tagaddod-d8ffe--MsZkGFSCtYxntenMuVF-export.json', SINGLE_CLOB) AS r  
select *  from  OPENJSON (@json) as j



-----create 4 tables to import 4 files


CREATE TABLE file11 (
    [key] nvarchar(4000),
    [value] nvarchar(max),
    [type] tinyint
)
CREATE TABLE file22 (
    [key] nvarchar(4000),
    [value] nvarchar(max),
    [type] tinyint
)
CREATE TABLE file33 (
    [key] nvarchar(4000),
    [value] nvarchar(max),
    [type] tinyint
)
CREATE TABLE file44 (
    [key] nvarchar(4000),
    [value] nvarchar(max),
    [type] tinyint
)




------query to commond in SSIS for extrating data from 4 tables to flate table and  make transformation on it (data type_....)


--on table file11
select
collector_id = JSON_VALUE(t.value,'$.collector_id'),
device_id=JSON_VALUE(t.value,'$.device_id'),
destination_request_id=JSON_VALUE(t.value,'$.destination_request_id'),
latitude=JSON_VALUE(t.value,'$.latitude'),
longitude=JSON_VALUE(t.value,'$.longitude'),
snapshot_datetime=JSON_VALUE(t.value,'$.snapshot_datetime')
from  file11 as t 
go


--on table file22
select
collector_id = JSON_VALUE(t.value,'$.collector_id'),
device_id=JSON_VALUE(t.value,'$.device_id'),
destination_request_id=JSON_VALUE(t.value,'$.destination_request_id'),
latitude=JSON_VALUE(t.value,'$.latitude'),
longitude=JSON_VALUE(t.value,'$.longitude'),
snapshot_datetime=JSON_VALUE(t.value,'$.snapshot_datetime')
from  file22 as t 


--on table file33
select
collector_id = JSON_VALUE(t.value,'$.collector_id'),
device_id=JSON_VALUE(t.value,'$.device_id'),
destination_request_id=JSON_VALUE(t.value,'$.destination_request_id'),
latitude=JSON_VALUE(t.value,'$.latitude'),
longitude=JSON_VALUE(t.value,'$.longitude'),
snapshot_datetime=JSON_VALUE(t.value,'$.snapshot_datetime')
from  file33 as t


--on table file44





select
collector_id = JSON_VALUE(t.value,'$.collector_id'),
device_id=JSON_VALUE(t.value,'$.device_id'),
destination_request_id=JSON_VALUE(t.value,'$.destination_request_id'),
latitude=JSON_VALUE(t.value,'$.latitude'),
longitude=JSON_VALUE(t.value,'$.longitude'),
snapshot_datetime=JSON_VALUE(t.value,'$.snapshot_datetime')
from  file44 as t