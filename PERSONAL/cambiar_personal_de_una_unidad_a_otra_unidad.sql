/* seleccionar el personal para cambiar de unidad */

use BDPERSONAL
select * from MAESTRO where NOMBRE like '%MARTINEZ%'

declare @lccodigo varchar(13) = '084620'
select * from dbo.ServicioMaestro where Codigo = @lccodigo
select * from ASISTENCIA where CODIGO = @lccodigo and MES = 2 and AÑO = 2017

esta en: idservdepartunid = 59

/* debe estar en  */


select * from dbo.ServicioDepartUnidad order by IdServDepartUnid asc
SELECT * FROM dbo.DepartamentoUnidad ORDER BY IdDepartUnid ASC

select * from dbo.ServicioDepartUnidad WHERE IDDEPARTUNID = '19' AND DniAcceso = '73351268'  order by IdServDepartUnid asc


idservdepartunid = 61
iddepartunid = 13

/* cambiado */
update dbo.ServicioMaestro set idservdepartunid = 61, iddepartunid = 13 where Codigo = '054090'
update ASISTENCIA set idservdepartunid = 61 where CODIGO = '054090' and MES = 2 and AÑO = 2017


select * from dbo.ServicioDepartUnidad order by IdServDepartUnid asc


SELECT * FROM dbo.T_UnidadOrganica ORDER BY CODIGO ASC


INSERT INTO [BDPERSONAL].[dbo].[T_UnidadOrganica]([CODIGO],[NOMBRE],[TIPO])
  VALUES  ('0236', 'SERVICIO DE INFECTOLOGIA', 'R')
INSERT INTO [BDPERSONAL].[dbo].[ServicioDepartUnidad]([IdDepartUnid],[Codigo],[Nombre],[Tipo],[Activo],[DniAcceso])
     VALUES (14, '0236', 'SERVICIO DE INFECTOLOGIA', 'R', 1, '06808595')
     
     
UPDATE ASISTENCIA SET IdServDepartUnid = '117' WHERE CODIGO = '084620' and MES = 2 and AÑO = 2017   .



INSERT INTO [BDPERSONAL].[dbo].[T_UnidadOrganica]([CODIGO],[NOMBRE],[TIPO])
  VALUES  ('0236', 'SERVICIO DE INFECTOLOGIA', 'R')
INSERT INTO [BDPERSONAL].[dbo].[ServicioDepartUnidad]([IdDepartUnid],[Codigo],[Nombre],[Tipo],[Activo],[DniAcceso])
     VALUES (14, '0236', 'SERVICIO DE INFECTOLOGIA', 'R', 1, '06808595')




declare @lccodigo varchar(13) = '084620'
USE BDPERSONAL
/* SELECT * FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad] */ -- 117
select * from dbo.ServicioMaestro where Codigo = @lccodigo
select * from ASISTENCIA where CODIGO = @lccodigo and MES = 2 and AÑO = 2017

UPDATE ServicioMaestro SET IdServDepartUnid = 117 where Codigo = '084620'

UPDATE ASISTENCIA SET IdServDepartUnid = '117' WHERE CODIGO = '084620' and MES = 2 and AÑO = 2017
  
     
     
use bdpersonal
select * from dbo.T_Horarios order by CODHOR asc


select * from ASISTENCIA where IdServDepartUnid in ('28', '58', '59', '60', '65', '66', '67', '68', '69', '70', '71', '72', '74', '75', '76','78', '80',
'81', '82', '83', '84', '110', '111') and MES = 2 and AÑO = 2017 order by CODIGO asc
 
 

select CODIGO, COUNT(codigo) as dias  from ASISTENCIA where IdServDepartUnid in ('28', '58', '59', '60', '65', '66', '67', '68', '69', '70', '71', '72', '74', '75', '76','78', '80',
'81', '82', '83', '84', '110', '111') and MES = 2 and AÑO = 2017 group by codigo  order by CODIGO asc 

update ASISTENCIA set INDICADOR = '1' where IdServDepartUnid in ('28', '58', '59', '60', '65', '66', '67', '68', '69', '70', '71', '72', '74', '75', '76','78', '80',
'81', '82', '83', '84', '110', '111') and MES = 2 and AÑO = 2017 
 