
 use sigsalud
 DECLARE @lcfecha1 DATETIME = CONVERT(DATETIME, '2017-03-20', 101)
 DECLARE @lcfecha2 DATETIME = CONVERT(DATETIME, '2017-03-20', 101)
 select b.nombre, a.consultorio, COUNT(a.consultorio) as contar from EMERGENCIA a left join consultorio b on b.consultorio = a.consultorio 
 where FECHA BETWEEN @lcfecha1 AND @lcfecha2 and ESTADO in ('3','4')
 group by b.nombre, a.CONSULTORIO  order by b.NOMBRE asc
 
 
 
 use sigsalud
 DECLARE @lcfecha1 DATETIME = CONVERT(DATETIME, '2017-03-20', 101)
 DECLARE @lcfecha2 DATETIME = CONVERT(DATETIME, '2017-03-20', 101)
 select b.nombre, a.consultorio, COUNT(a.consultorio) as contar  from ATENCIONC a 
 left join consultorio b on b.consultorio = a.consultorio  where FECHA BETWEEN @lcfecha1 AND @lcfecha2 and ESTADO = '0'
 group by b.nombre, a.CONSULTORIO  order by b.NOMBRE asc
 
 
 
 use sigsalud
 DECLARE @lcfecha1 DATETIME = CONVERT(DATETIME, '2016-01-20', 101)
 DECLARE @lcfecha2 DATETIME = CONVERT(DATETIME, '2016-01-20', 101)
 
 select CODIGOESPE2, COUNT(codigoespe2) as Cantidad  from HOSPITALIZACION a 
 left join consultorio b on b.consultorio = a.codigoespe2
 where FECHA1 BETWEEN @lcfecha1 AND @lcfecha2  group by b.nombre, a.CODIGOESPE2 order by b.NOMBRE asc
 
 
 
 
 select b.nombre, a.consultorio, COUNT(a.consultorio) as contar  from ATENCIONC a 
 left join consultorio b on b.consultorio = a.consultorio  where FECHA BETWEEN @lcfecha1 AND @lcfecha2 and ESTADO = '0'
 group by b.nombre, a.CONSULTORIO  order by b.NOMBRE asc
 
 
 
 
 
 
 
 select b.nombre, a.consultorio, COUNT(a.consultorio) as contar from EMERGENCIA a left join consultorio b on b.consultorio = a.consultorio 
 where FECHA BETWEEN @lcfecha1 AND @lcfecha2 and ESTADO in ('3','4')
 group by b.nombre, a.CONSULTORIO  order by b.NOMBRE asc
 
 
 
 
 SELECT 'MEDICINA SIS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM EMERGENCIA 
     WHERE FECHA BETWEEN @lcfecha1 AND @lcfecha2 AND CONSULTORIO = '1050'
     AND SEGURO IN ('01', '15', '03') AND CIEX1 > '0' GROUP BY CONSULTORIO 
	  UNION ALL
	  SELECT 'CIRUGIA SIS' AS descripcion, COUNT(EMERGENCIA_ID) AS cantidad FROM EMERGENCIA 
	  WHERE FECHA BETWEEN  @lcfecha1 AND @lcfecha2 AND CONSULTORIO = '2050'
	  AND SEGURO IN ('01', '15', '03') AND  CIEX1 > '0' GROUP BY CONSULTORIO 