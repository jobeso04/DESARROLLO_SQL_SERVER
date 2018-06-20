use SIGSALUD
select COUNT(emergencia_id) as nro from EMERGENCIA where fecha = CONVERT(datetime, '2016-03-10', 101)
union all
select COUNT(emergencia_id) as nro from EMERGENCIA where fecha = CONVERT(datetime, '2016-03-11', 101)
union all
select COUNT(emergencia_id) as nro from EMERGENCIA where fecha = CONVERT(datetime, '2016-03-12', 101)
union all
select COUNT(emergencia_id) as nro from EMERGENCIA where fecha = CONVERT(datetime, '2016-03-13', 101)
union all
select COUNT(emergencia_id) as nro from EMERGENCIA where fecha = CONVERT(datetime, '2016-03-14', 101)
union all
select COUNT(emergencia_id) as nro from EMERGENCIA where fecha = CONVERT(datetime, '2016-03-15', 101)
union all
select COUNT(emergencia_id) as nro from EMERGENCIA where fecha = CONVERT(datetime, '2016-03-16', 101)
union all
select COUNT(emergencia_id) as nro from EMERGENCIA where fecha = CONVERT(datetime, '2016-03-17', 101)
