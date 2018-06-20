USE SIGSALUD
declare @lcfecha1 datetime = convert(datetime, '2017-03-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-03-29', 101)
select * from ATENCIOND where id_cita  in (select ID_CITA  from ATENCIONC where FECHA BETWEEN @lcfecha1 AND @lcfecha2) and DX LIKE ('J01%')



select ID_CITA  from ATENCIONC where FECHA BETWEEN @lcfecha1 AND @lcfecha2

/* AGREGAR EN CONDICON LOS DEFINITIVOS */


select * from ATENCIOND where id_cita  in (select ID_CITA  from ATENCIONC where FECHA BETWEEN @lcfecha1 AND @lcfecha2) and DX in ('J01')

select * from ATENCIOND where id_cita  in (select ID_CITA  from ATENCIONC where FECHA BETWEEN @lcfecha1 AND @lcfecha2) and DX in ('J029')