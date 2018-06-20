use SIGSALUD
go

declare @lfecha datetime = convert(datetime, '2015-10-19',101)
select count(OBSERVACION1) from emergencia where fecha = @lfecha 
select count(OBSERVACION1) from emergencia where fecha = @lfecha and observacion1 <> ''

select CIEX1 AS CIEX, COUNT(CIEX1) AS FRECUENCIA from emergencia where fecha = @lfecha  AND CIEX1 <> '0' GROUP BY CIEX1 
UNION ALL
select CIEX2 AS CIEX, COUNT(CIEX2) AS FRECUENCIA from emergencia where fecha = @lfecha  AND CIEX2 <> '0' GROUP BY CIEX2 
UNION ALL
select CIEX3 AS CIEX, COUNT(CIEX3) AS FRECUENCIA from emergencia where fecha = @lfecha  AND CIEX3 <> '0' GROUP BY CIEX3 
UNION ALL
select CIEX4 AS CIEX, COUNT(CIEX4) AS FRECUENCIA from emergencia where fecha = @lfecha  AND CIEX4 <> '0' GROUP BY CIEX4 
UNION ALL
select CIEX5 AS CIEX, COUNT(CIEX5) AS FRECUENCIA from emergencia where fecha = @lfecha  AND CIEX5 <> '0' GROUP BY CIEX5 
UNION ALL
select CIEX6 AS CIEX, COUNT(CIEX6) AS FRECUENCIA from emergencia where fecha = @lfecha  AND CIEX6 <> '0' GROUP BY CIEX6 
UNION ALL
select CIEX7 AS CIEX, COUNT(CIEX7) AS FRECUENCIA from emergencia where fecha = @lfecha  AND CIEX7 <> '0' GROUP BY CIEX7 
UNION ALL
select CIEX8 AS CIEX, COUNT(CIEX8) AS FRECUENCIA from emergencia where fecha = @lfecha  AND CIEX8 <> '0' GROUP BY CIEX8 
UNION ALL
select CIEX9 AS CIEX, COUNT(CIEX9) AS FRECUENCIA from emergencia where fecha = @lfecha  AND CIEX9 <> '0' GROUP BY CIEX9 

/* ********* PARA PRIORIDAD **************/


select PRIORIDAD, COUNT(PRIORIDAD) AS CANTIDAD from emergencia where fecha = @lfecha AND PRIORIDAD IS NOT NULL GROUP BY PRIORIDAD ORDER BY PRIORIDAD DESC

select DISTRITO, LOCALIDAD from emergencia where fecha = @lfecha AND  ESTADO <> '0'


 