SELECT * FROM [BDPERSONAL].[dbo].[ACTIVIDADES] ORDER BY NOMBRE ASC

  
SELECT [ID_ACTIVIDAD]
      ,[NOMBRE]
      ,[ABREVIATURA]
      ,[ACTIVO]
      ,[TITULO]
      ,[SUBTITULO]
  FROM [BDPERSONAL].[dbo].[ACTIVIDADES] WHERE NOMBRE LIKE 'VIS. MED. HOSPITALARIA%'
  
  SELECT * FROM [BDPERSONAL].[dbo].[ACTIVIDADES] WHERE NOMBRE LIKE 'EMER%'
  
  UPDATE [BDPERSONAL].[dbo].[ACTIVIDADES] SET ABREVIATURA = 'EME' WHERE ABREVIATURA = 'EMEG'
  
  
  SELECT *  FROM [BDPERSONAL].[dbo].[ACTIVIDADES]




  
  
  
  SELECT * FROM [BDPERSONAL].[dbo].[ACTIVIDADES] WHERE NOMBRE LIKE 'SALA DE%'
  
  
  
  
  