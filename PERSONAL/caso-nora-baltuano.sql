  use BDPERSONAL
  select * FROM [BDPERSONAL].[dbo].[MAESTRO] where CODIGO = '084010'
  union all
  select * FROM [BDPERSONAL].[dbo].[MAESTRO] where CODIGO = '084306'
  
  
  select * from asistencia where AÑO = '2016' and MES = 3 and CODIGO = '084306'
  
  
  select * FROM [BDPERSONAL].[dbo].[MAESTRO] where NOMBRE like 'baltuano%'
  
  