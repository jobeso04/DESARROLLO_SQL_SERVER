/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [IDMEDICO]
      ,[CODPSAL]
      ,[NOMBRE]
      ,[PLAZA]
      ,[COD_2000]
      ,[COD_PROF]
      ,[COD_COND]
      ,[FECHA_ING]
      ,[FECHA_BAJA]
      ,[DNI]
    FROM [SIGSALUD].[dbo].[SEMMEDICOS] WHERE NOMBRE = ''
  
SELECT dni FROM [SIGSALUD].[dbo].[SEMMEDICOS] WHERE NOMBRE = ''
  
  SELECT * FROM HIS WHERE DNI = 01261955
  
  USE SIGSALUD 
  SELECT TOP 1 CODHIS, PROF_CITA, PLAZA FROM HIS WHERE SUBSTRING(CODHIS,2,8) =  '01261955'
  
  
  USE SIGSALUD 
  SELECT * FROM MEDICO where DNI = '76646780'
  SELECT * FROM MEDICO where DNI = '76646780'
  
  
  select semprofesion from ESPECIALIDAD where ESPECIALIDAD = '0022'
  
/* cambios a la tabla especialidad */
use SIGSALUD
alter table ESPECIALIDAD add semprofesion varchar(4)

select * from ESPECIALIDAD order by NOMBRE asc
update ESPECIALIDAD set semprofesion = '01' where ESPECIALIDAD = '0001'
update ESPECIALIDAD set semprofesion = '12' where ESPECIALIDAD = '0002'
update ESPECIALIDAD set semprofesion = '19' where ESPECIALIDAD = '0003'
update ESPECIALIDAD set semprofesion = '23' where ESPECIALIDAD = '0004'
update ESPECIALIDAD set semprofesion = '22' where ESPECIALIDAD = '0005'
update ESPECIALIDAD set semprofesion = '18' where ESPECIALIDAD = '0006'
update ESPECIALIDAD set semprofesion = '14' where ESPECIALIDAD = '0007'
update ESPECIALIDAD set semprofesion = '02' where ESPECIALIDAD = '0008'
update ESPECIALIDAD set semprofesion = '13' where ESPECIALIDAD = '0010'
update ESPECIALIDAD set semprofesion = '17' where ESPECIALIDAD = '0011'
update ESPECIALIDAD set semprofesion = '09' where ESPECIALIDAD = '0012'
update ESPECIALIDAD set semprofesion = '28' where ESPECIALIDAD = '0013'
update ESPECIALIDAD set semprofesion = '08' where ESPECIALIDAD = '0014'
update ESPECIALIDAD set semprofesion = '05' where ESPECIALIDAD = '0017'
update ESPECIALIDAD set semprofesion = '06' where ESPECIALIDAD = '0018'
update ESPECIALIDAD set semprofesion = '03' where ESPECIALIDAD = '0019'
update ESPECIALIDAD set semprofesion = '04' where ESPECIALIDAD = '0020'
update ESPECIALIDAD set semprofesion = '11' where ESPECIALIDAD = '0022'
update ESPECIALIDAD set semprofesion = '17' where ESPECIALIDAD = '0023'
update ESPECIALIDAD set semprofesion = '19' where ESPECIALIDAD = '0024'
update ESPECIALIDAD set semprofesion = '25' where ESPECIALIDAD = '0025'
update ESPECIALIDAD set semprofesion = '10' where ESPECIALIDAD = '0026'
update ESPECIALIDAD set semprofesion = '07' where ESPECIALIDAD = '0027'
update ESPECIALIDAD set semprofesion = '01' where ESPECIALIDAD = '0032'
update ESPECIALIDAD set semprofesion = '21' where ESPECIALIDAD = '0036'


USE SIGSALUD
select * from ESPECIALIDAD ORDER BY NOMBRE ASC
select * from ESPECIALIDAD ORDER BY ESPECIALIDAD ASC


SELECT * FROM CONSULTORIO_HOSPITALIZA 303510
select * from semprofesion