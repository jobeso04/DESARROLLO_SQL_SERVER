/*
declare @lid_paciente varchar(15) = '2010187705'
SELECT HISTORIA, PATERNO, MATERNO, NOMBRE  FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente

select * from [SIGSALUD].[dbo].[EMERGENCIA] WHERE PACIENTE = '2010187705'
*/


declare @lid_paciente varchar(15) = '2010187705'
DECLARE @lc_paterno varchar(50) = (select PATERNO FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)
DECLARE @lc_materno varchar(50) = (select MATERNO FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)
DECLARE @lc_nombre  varchar(50) = (select NOMBRE FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)
DECLARE @lc_nombres  varchar(50) = (select NOMBRES FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)
declare @ld_fecha_nacimiento datetime = (select FECHA_NACIMIENTO FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)
declare @lc_edad varchar(10) = (select EDAD FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)
declare @lc_sexo varchar(1) = (select SEXO FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)
declare @lc_estado_civil varchar(2) = (select ESTADO_CIVIL FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)
declare @lc_direccion varchar(60) = (select DIRECCION FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)
DECLARE @lc_documento varchar(20) = (select DOCUMENTO FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)
DECLARE @lc_seguro varchar(3) = (select SEGURO FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente)

UPDATE [SIGSALUD].[dbo].[EMERGENCIA] set PATERNO = @lc_paterno, MATERNO = @lc_materno, NOMBRE = @lc_nombre, NOMBRES = @lc_nombres,
  FECHA_NACIMIENTO = @ld_fecha_nacimiento, SEXO = @lc_sexo , ESTADO_CIVIL =@lc_estado_civil, DIRECCION = @lc_direccion, DOCUMENTO = @lc_documento, 
  SEGURO = @lc_seguro WHERE PACIENTE = @lid_paciente   
  
  



= , MATERNO, NOMBRE, NOMBRES, FECHA_NACIMIENTO, EDAD, SEXO, ESTADO_CIVIL, DIRECCION, DOCUMENTO, SEGURO from 


SELECT HISTORIA, PATERNO, MATERNO, NOMBRE, NOMBRES,FECHA_NACIMIENTO, EDAD, SEXO, ESTADO_CIVIL, DIRECCION, DOCUMENTO, SEGURO   FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente
select PATERNO, MATERNO, NOMBRE, NOMBRES, FECHA_NACIMIENTO, EDAD, SEXO, ESTADO_CIVIL, DIRECCION, DOCUMENTO, SEGURO from [SIGSALUD].[dbo].[EMERGENCIA] WHERE PACIENTE = @lid_paciente

UPDATE [SIGSALUD].[dbo].[EMERGENCIA] WHERE PACIENTE = @lid_paciente   

PATERNO = , MATERNO, NOMBRE, NOMBRES, FECHA_NACIMIENTO, EDAD, SEXO, ESTADO_CIVIL, DIRECCION, DOCUMENTO, SEGURO from 



SELECT HISTORIA, PATERNO, MATERNO, NOMBRE, NOMBRES,FECHA_NACIMIENTO, EDAD, SEXO, ESTADO_CIVIL, DIRECCION, DOCUMENTO, SEGURO   FROM  [SIGSALUD].[dbo].[PACIENTE] WHERE paciente = @lid_paciente
