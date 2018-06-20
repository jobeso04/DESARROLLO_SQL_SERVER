SELECT * FROM [SIGSALUD].[dbo].[SEMMEDICOS]    

USE BDPERSONAL
ALTER TABLE [BDPERSONAL].[dbo].[T_CargoFuncional] ADD SEMPROFESION VARCHAR(4) 
  
use BDPERSONAL
update dbo.T_CargoFuncional set semprofesion = '19' WHERE CODIGO = '0024'
update dbo.T_CargoFuncional set semprofesion = '30' WHERE CODIGO = '0020'
update dbo.T_CargoFuncional set semprofesion = '10' WHERE CODIGO = '0023'
update dbo.T_CargoFuncional set semprofesion = '18' WHERE CODIGO = '0026'
update dbo.T_CargoFuncional set semprofesion = '11' WHERE CODIGO = '0027'
update dbo.T_CargoFuncional set semprofesion = '23' WHERE CODIGO = '0028'
update dbo.T_CargoFuncional set semprofesion = '02' WHERE CODIGO = '0044'
update dbo.T_CargoFuncional set semprofesion = '13' WHERE CODIGO = '0045'
update dbo.T_CargoFuncional set semprofesion = '24' WHERE CODIGO = '0049'
update dbo.T_CargoFuncional set semprofesion = '28' WHERE CODIGO = '0050'
update dbo.T_CargoFuncional set semprofesion = '31' WHERE CODIGO = '0052'
update dbo.T_CargoFuncional set semprofesion = '01' WHERE CODIGO = '0025'

USE SIGSALUD
update MEDICO set DNI = '07657482' WHERE MEDICO = 'SAY'
update MEDICO set DNI = '10608181' WHERE MEDICO = 'LAX'
update MEDICO set DNI = '10608181' WHERE MEDICO = 'GGJ'
update MEDICO set DNI = '06560141' WHERE MEDICO = 'RMJ'
update MEDICO set DNI = '07899363' WHERE MEDICO = 'CGJ'
update MEDICO set DNI = '09506925' WHERE MEDICO = 'CBM'
update MEDICO set DNI = '07664678' where MEDICO = 'CCV'
update MEDICO set DNI = '06972778' where MEDICO = 'MAT'
UPDATE HIS SET PROF_CITA = 'MENGOLE AMAYA TERESA ANGELICA' WHERE SUBSTRING(CODHIS,2,8) =  '06972778'
UPDATE HIS SET CODHIS = '10697277801'  WHERE SUBSTRING(CODHIS,2,8) =  '06972778'


USE BDPERSONAL
update MAESTRO set DNI_ACTUAL = '09137316', DNI = '09137316' WHERE CODIGO = '054026'
update MAESTRO set DNI_ACTUAL = '10229416' WHERE CODIGO = '084469'
update MAESTRO set DNI_ACTUAL = '29658132', DNI = '29658132' WHERE CODIGO = '054008'
update MAESTRO set DNI_ACTUAL = '40918034', DNI = '40918034' WHERE CODIGO = '054042'
update MAESTRO set DNI_ACTUAL = '41205101', DNI = '41205101' WHERE CODIGO = '054043'
update MAESTRO set DNI_ACTUAL = '42139649'  WHERE CODIGO = '084345'
update MAESTRO set DNI_ACTUAL = '79004970', DNI = '79004970'  WHERE CODIGO = '054025'
update MAESTRO set CODFUNCION = '0024'  WHERE CODIGO = '084168'
update MAESTRO set CODFUNCION = '0026'  WHERE CODIGO = '084092'
update MAESTRO set CODFUNCION = '0023'  WHERE CODIGO = '084085'
update MAESTRO set CODFUNCION = '0023'  WHERE CODIGO = '084119'
update MAESTRO set CODFUNCION = '0023'  WHERE CODIGO = '054008'
update MAESTRO set CODFUNCION = '0025'  WHERE CODIGO = '054042'
update MAESTRO set CODFUNCION = '0025'  WHERE CODIGO = '054043'
update MAESTRO set CODFUNCION = '0026'  WHERE CODIGO = '084345'
update MAESTRO set CODFUNCION = '0026'  WHERE CODIGO = '054025'
update MAESTRO set CODFUNCION = '0024'  WHERE CODIGO = '054025'

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

