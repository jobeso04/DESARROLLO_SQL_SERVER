
use sigsalud
select * from consultorio where HIS_CODSERVICIO like '301203%'


 SELECT * FROM [SIGSALUD].[dbo].[PRECIO]
  
  alter table [SIGSALUD].[dbo].[PRECIO] add USUARIO_MODIFICO VARCHAR(50)
  alter table [SIGSALUD].[dbo].[PRECIO] add PC_MODIFICO VARCHAR(50)
  alter table [SIGSALUD].[dbo].[PRECIO] add FECHA_MODIFICACION DATETIME