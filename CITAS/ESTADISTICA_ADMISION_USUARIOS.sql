/* REPORTE DE USUARIO POR FECHA */

DECLARE @lcfecha1 datetime = convert(datetime, '2018-04-09', 101)
DECLARE @lcfecha2 datetime = convert(datetime, '2018-04-13', 101)
DECLARE @lt_table_resumen as table (fecha varchar(10), usuario varchar(50), cantidad_citas int)
insert into @lt_table_resumen
SELECT CONVERT(VARCHAR(10), A.FECHA, 103) AS FECHA, A.USUARIO, COUNT(A.CONSULTORIO) AS CANTIDAD_CITAS
  FROM [SIGSALUD].[dbo].[CITA]  A LEFT JOIN [SIGSALUD].[dbo].[CONSULTORIO] B ON A.CONSULTORIO = B.CONSULTORIO 
      WHERE A.fecha between @lcfecha1 and @lcfecha2 and A.ESTADO IN ('2', '3', '4', '5') 
       GROUP BY A.FECHA, A.USUARIO, B.NOMBRE ORDER BY A.USUARIO 
select B.NOMBRE, SUM(A.cantidad_citas) AS TOTAL from @lt_table_resumen A LEFT JOIN 
[SIGSALUD].[dbo].[USUARIO] B ON A.usuario = B.USUARIO GROUP BY B.NOMBRE
 ORDER BY B.NOMBRE
 
 


/* TODOEL AÑO * PRODUCCION DE ECOGRFIA - UNIDAD DE CALIDAD */

/* CITAS POR MEDICO */



 

 




/*
SELECT CONVERT(VARCHAR(10), A.FECHA, 103) AS FECHA, A.USUARIO, B.NOMBRE, COUNT(A.CONSULTORIO) AS CANTIDAD_CITAS
  FROM [SIGSALUD].[dbo].[CITA]  A LEFT JOIN [SIGSALUD].[dbo].[CONSULTORIO] B ON A.CONSULTORIO = B.CONSULTORIO 
      WHERE A.fecha between @lcfecha1 and @lcfecha2 and A.ESTADO IN ('2', '3', '4', '5') 
       GROUP BY A.FECHA, A.USUARIO, B.NOMBRE ORDER BY A.FECHA, A.USUARIO 
  */     
