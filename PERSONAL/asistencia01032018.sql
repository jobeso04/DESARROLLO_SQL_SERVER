/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [codigo],[fecha]   FROM [BDPERSONAL].[dbo].[asistencia0103]

 select codigo, convert(datetime, convert(date, fecha), 101) as fecha,  convert(nvarchar(8), fecha, 108) as  hora, '1' as relog
       from  [BDPERSONAL].[dbo].[asistencia0103]  where FECHA > CONVERT(datetime, '2018-02-14', 101) + CAST('12:12:55' AS DATETIME)   ORDER BY FECHA 