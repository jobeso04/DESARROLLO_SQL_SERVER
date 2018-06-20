/****** Script para el comando SelectTopNRows de SSMS  ******/


SELECT  CODIGO   FROM [BDPERSONAL].[dbo].[ASISTENCIA]  where año = 2017 and MES = 10 and IdServDepartUnid = 41 group by CODIGO  




SELECT  A.CODIGO, B.NOMBRE   FROM [BDPERSONAL].[dbo].[ASISTENCIA] A LEFT JOIN [BDPERSONAL].[dbo].[MAESTRO] B ON A.CODIGO = B.CODIGO
 where A.año = 2017 and A.MES = 10 and A.IdServDepartUnid = 16 group by A.CODIGO, B.NOMBRE ORDER BY B.NOMBRE 
 
