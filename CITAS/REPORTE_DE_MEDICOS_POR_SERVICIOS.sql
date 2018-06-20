/* dado el nombre del medico - ver todos sus atenciones */

declare @lcfecha1 datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2017-08-31', 101)
declare @lcmedico varchar(3) = 'PCE'

select 'CONSULTORIOS' AS SERVICIO,  FECHA, COUNT(FECHA) AS ATENCIONES, TURNO_CONSULTA AS TURNO_ATENCION from ATENCIONC where FECHA between @lcfecha1 and @lcfecha2 and medico = @lcmedico GROUP BY FECHA, TURNO_CONSULTA
UNION ALL
select 'EMERGENCIA' AS SERVICIO, FECHA, COUNT(FECHA) AS ATENCIONES, CASE WHEN CONVERT(TIME(7), HORA) BETWEEN CONVERT(TIME(7), '20:00:00') AND CONVERT(TIME(7), '08:00:00') THEN 'N' WHEN CONVERT(TIME(7), HORA) BETWEEN CONVERT(TIME(7), '08:00:00') AND CONVERT(TIME(7), '13:00:00') THEN 'M' 
WHEN CONVERT(TIME(7), HORA) BETWEEN CONVERT(TIME(7), '13:00:00') AND CONVERT(TIME(7), '20:00:00') THEN 'T' ELSE 'N' END AS TURNO_CONSULTA   from EMERGENCIA
 where FECHA between @lcfecha1 and @lcfecha2 GROUP BY FECHA
 
UNION ALL 
select 'EMERGENCIA' AS SERVICIO, fecha, COUNT(FECHA) AS ATENCIONES from EMERGENCIA where FECHA between @lcfecha1 and @lcfecha2 and QUIEN_ATIENDE = @lcmedico and ESTADO = '3' GROUP BY FECHA 

union all 
select 'EMERGENCIA' AS SERVICIO, fecha from EMERGENCIA_DET_WEB where FECHA between @lcfecha1 and @lcfecha2 and PROFESIONAL = @lcmedico and ESTADO = '3'
UNION ALL 
select 'HOSPITALIZACION' AS SERVICIO, fecha1 AS fecha from hospitalizacion  where FECHA1 between @lcfecha1 and @lcfecha2 and RESPONSABLE1 = @lcmedico 
union all
select 'HOSPITALIZACION' AS SERVICIO, fecha1 AS fecha from hospitalizacion  where FECHA1 between @lcfecha1 and @lcfecha2 and RESPONSABLE3 = @lcmedico 
union all
select 'HOSPITALIZACION' AS SERVICIO, fecha1 AS fecha from hospitalizacion  where FECHA1 between @lcfecha1 and @lcfecha2 and RESPONSABLE4 = @lcmedico 
union all 
select 'HOSPITALIZACION' AS SERVICIO, fecha1 AS fecha from hospitalizacion  where FECHA1 between @lcfecha1 and @lcfecha2 and RESPONSABLE51 = @lcmedico order by SERVICIO 



select A.CODIGO, A.IdServDepartUnid, B.Nombre from [BDPERSONAL].[dbo].[ASISTENCIA]  A 
LEFT JOIN [BDPERSONAL].[dbo].[ServicioDepartUnidad] B ON A.IdServDepartUnid = B.IdServDepartUnid where A.AÑO = 2017 AND A.MES = 8 


select A.IdServDepartUnid, B.Nombre from [BDPERSONAL].[dbo].[ASISTENCIA]  A 
LEFT JOIN [BDPERSONAL].[dbo].[ServicioDepartUnidad] B ON A.IdServDepartUnid = B.IdServDepartUnid where A.AÑO = 2017 AND A.MES = 8
AND A.IdServDepartUnid NOT IN (NULL, 2, 3, 4, 8, 11, 12, 13, 15)  GROUP BY A.IdServDepartUnid, B.Nombre



select A.CODIGO, A.IdServDepartUnid, B.Nombre, C.DNI_ACTUAL, C.NOMBRE AS MEDICO  from [BDPERSONAL].[dbo].[ASISTENCIA]  A 
LEFT JOIN [BDPERSONAL].[dbo].[ServicioDepartUnidad] B ON A.IdServDepartUnid = B.IdServDepartUnid 
LEFT JOIN [BDPERSONAL].[dbo].[MAESTRO] C ON C.CODIGO = A.CODIGO where A.AÑO = 2017 AND A.MES = 8
AND A.IdServDepartUnid NOT IN (2, 3, 4, 8, 11, 12, 13, 15, 21, 22, 23, 24, 25, 26, 27, 28, 42, 51, 52, 58, 59, 60, 61, 65, 66, 67,
68, 69, 70, 71, 72, 74, 75, 76, 78, 80, 81, 82, 83, 86, 87, 88, 89, 93, 109, 110, 111, 113, 118) AND A.IdServDepartUnid IS NOT NULL
 GROUP BY A.CODIGO, A.IdServDepartUnid, B.Nombre, C.DNI_ACTUAL, C.NOMBRE  ORDER BY DNI_ACTUAL ASC
 


select A.CODIGO, A.IdServDepartUnid, B.Nombre, C.DNI_ACTUAL, D.DNI, D.MEDICO, C.NOMBRE AS MEDICO  from [BDPERSONAL].[dbo].[ASISTENCIA]  A 
LEFT JOIN [BDPERSONAL].[dbo].[ServicioDepartUnidad] B ON A.IdServDepartUnid = B.IdServDepartUnid 
LEFT JOIN [BDPERSONAL].[dbo].[MAESTRO] C ON C.CODIGO = A.CODIGO LEFT JOIN [SIGSALUD].[dbo].[MEDICO] D ON D.DNI = C.DNI_ACTUAL
 where A.AÑO = 2017 AND A.MES = 8 AND A.IdServDepartUnid NOT IN (2, 3, 4, 8, 11, 12, 13, 15, 21, 22, 23, 24, 25, 26, 27, 28, 42, 51, 52, 58, 59, 60, 61, 65, 66, 67,
68, 69, 70, 71, 72, 74, 75, 76, 78, 80, 81, 82, 83, 86, 87, 88, 89, 93, 109, 110, 111, 113, 118) AND A.IdServDepartUnid IS NOT NULL AND  D.DNI IS NOT NULL 
GROUP BY A.CODIGO, A.IdServDepartUnid, B.Nombre, C.DNI_ACTUAL, C.NOMBRE, D.DNI, D.MEDICO, C.NOMBRE  ORDER BY C.NOMBRE   ASC



DECLARE @lcnombre VARCHAR(200) = 'BARRIENTOS BENA'
SELECT * FROM [SIGSALUD].[dbo].[MEDICO] WHERE NOMBRE LIKE '%' + @lcnombre + '%'
SELECT NOMBRE, DNI, DNI_ACTUAL, DNI_RELOG, codigo FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE NOMBRE LIKE '%' + @lcnombre + '%'
SELECT * FROM [SIGSALUD].[dbo].[USUARIO_WEB] WHERE NOMBRES LIKE '%' + @lcnombre + '%'
 
 
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '42094073' WHERE CODIGO = '054012' 
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '42139649' WHERE CODIGO = '054015' 
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '08010224' WHERE CODIGO = '054002' 
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '15699210' WHERE CODIGO = '054032' 
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '09368322' WHERE CODIGO = '054035' 
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '23248752' WHERE CODIGO = '054044' 
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '06965298' WHERE CODIGO = '054168' 
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '09333533' WHERE CODIGO = '054169' 
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '06775153' WHERE CODIGO = '054005' 
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '41033453' WHERE CODIGO = '054031' 
 UPDATE [SIGSALUD].[dbo].[MEDICO]  SET DNI = '08010224' WHERE MEDICO = 'MCA'
 UPDATE [SIGSALUD].[dbo].[MEDICO]  SET DNI = '09137316' WHERE MEDICO = 'GGJ'
 UPDATE [SIGSALUD].[dbo].[MEDICO]  SET DNI = '10245143' WHERE MEDICO = 'TLM'
 UPDATE [SIGSALUD].[dbo].[MEDICO]  SET DNI = '40106449' WHERE MEDICO = 'VTC'
 UPDATE [SIGSALUD].[dbo].[MEDICO]  SET DNI = '29415615' WHERE MEDICO = 'AME'
 UPDATE [BDPERSONAL].[dbo].[MAESTRO]  SET DNI_ACTUAL = '29415615' WHERE CODIGO = '084703' 
 
 
 
 
 
 
 
 
 
 