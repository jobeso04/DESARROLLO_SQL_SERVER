use SIGSALUD
declare @lidemergencia varchar(13) = '16030139'

/* ver diagnostico de entrada */
select tipo_ciex4, ciex4, tipo_ciex5, ciex5, tipo_ciex6, ciex6 from emergencia where emergencia_id = @lidemergencia
/* ver diagnostico de salida */
select tipo_ciex1, ciex1, tipo_ciex2, ciex2, tipo_ciex6, ciex3 from emergencia where emergencia_id = @lidemergencia
/* solucion */
/* update emergencia set ciex1 = '0', tipo_ciex1 = '0' where emergencia_id = @lidemergencia */


select * from ciex where ciex like 'N7%' order by ciex asc

select ciex2 from emergencia where emergencia_id = '16031157'

update emergencia set ciex2 = '0' where emergencia_id = '16031157'
update emergencia set tipo_ciex4 = '0' where tipo_ciex4 is null and FECHA BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101)
update emergencia set tipo_ciex5 = '0' where tipo_ciex5 is null and FECHA BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101)
update emergencia set tipo_ciex6 = '0' where tipo_ciex6 is null and FECHA BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101)


select tipo_ciex6, * from emergencia where  FECHA BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101)  and tipo_ciex6 is null 


 
 select tipo_ciex6 from emergencia where  FECHA BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101) group by tipo_ciex6



select ciex5 from emergencia where  FECHA BETWEEN CONVERT(DATETIME, '2016-07-01', 101) AND CONVERT(DATETIME, '2016-07-31', 101) group by ciex5