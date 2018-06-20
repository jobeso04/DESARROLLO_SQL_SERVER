use SIGSALUD
DECLARE @lfecha1 varchar(10) = '2016-01-01'
DECLARE @lfecha2 varchar(10) = '2016-01-31'


select * from EMERGENCIA where fecha between CONVERT(datetime, @lfecha1, 101) and CONVERT(datetime, @lfecha2, 101) and CIEX1 <> '0'
select * from EMERGENCIA where fecha between CONVERT(datetime, @lfecha1, 101) and CONVERT(datetime, @lfecha2, 101) 



