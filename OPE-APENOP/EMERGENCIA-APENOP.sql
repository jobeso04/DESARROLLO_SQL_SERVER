use sigsalud

declare @lnmes int = 1
declare @lnanio int = 2015

select ' MEDICINA INTERNA ' AS TAREA, COUNT(CONSULTORIO) AS ATENCION from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio and consultorio = '1050' AND ESTADO <> '0' GROUP BY CONSULTORIO
UNION ALL
select ' CIRUGIA_EMERGENCIA ' AS TAREA, COUNT(CONSULTORIO) AS ATENCION from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio and consultorio = '2050' AND ESTADO <> '0' GROUP BY CONSULTORIO
UNION ALL
select ' TRAUMATOLOGIA_EMERGENCIA ' AS TAREA, COUNT(CONSULTORIO) AS ATENCION from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio and consultorio = '2051' AND ESTADO <> '0' GROUP BY CONSULTORIO
UNION ALL
select ' EMERGENCIA DE 0 A 7 DIAS ' AS TAREA, COUNT(*) AS ATENCION  from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '000a00m00d' and '000a00m07d'  AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE 8 A 28 DIAS ' AS TAREA, COUNT(*) AS ATENCION  from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '000a00m08d' and '000a00m28d'  AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE 29D A 11 MESES ' AS TAREA, COUNT(*) AS ATENCION  from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '000a00m29d' and '000a11m%' AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE 1 A�O A 4 A�OS ' AS TAREA, COUNT(*) AS ATENCION from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '001a' and '004a' AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE 5 A�O A 9 A�OS ' AS TAREA, COUNT(*) AS ATENCION  from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '005a' and '009a' AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE 10 A�O A 14 A�OS ' AS TAREA, COUNT(*) AS ATENCION  from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio AND EDAD BETWEEN '010a' and '014a' AND ESTADO <> '0'
UNION ALL
select ' EMERGENCIA DE GINECOLOGIA ' AS TAREA, COUNT(CONSULTORIO) AS ATENCION from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio and consultorio = '4050' AND ESTADO <> '0' GROUP BY CONSULTORIO
UNION ALL
select ' EMERGENCIA DE OBSTRETICIA ' AS TAREA, COUNT(CONSULTORIO) AS ATENCION from EMERGENCIA  where MONTH(Fecha)=@lnmes AND YEAR(fecha) = @lnanio and consultorio = '4060' AND ESTADO <> '0' GROUP BY CONSULTORIO


/* select * from CONSULTORIO ORDER BY NOMBRE  ASC */