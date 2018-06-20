/* Consulta de Epidemiologia */

/* Tabla de Emergencia */
USE SIGSALUD
GO

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, CIEX1 as CIEXTOTAL
from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-31',101)  and CIEX1 IN ('R50', 'R50.1', 'R50.9')
and SUBSTRING(edad,1,4) = '000a' 
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, CIEX2 as CIEXTOTAL
from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-31',101)  and CIEX2 IN ('R50', 'R50.1', 'R50.9')
and SUBSTRING(edad,1,4) = '000a' 
UNION ALL
select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, CIEX3 as CIEXTOTAL
from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-31',101)  and CIEX3 IN ('R50', 'R50.1', 'R50.9')
and SUBSTRING(edad,1,4) = '000a' 
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, CIEX4 as CIEXTOTAL
from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-31',101)  and CIEX4 IN ('R50', 'R50.1', 'R50.9')
and SUBSTRING(edad,1,4) = '000a' 
UNION ALL
select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, CIEX5 as CIEXTOTAL
from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-31',101)  and CIEX5 IN ('R50', 'R50.1', 'R50.9')
and SUBSTRING(edad,1,4) = '000a' 
UNION ALL
select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, CIEX6 as CIEXTOTAL
from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-31',101)  and CIEX6 IN ('R50', 'R50.1', 'R50.9')
and SUBSTRING(edad,1,4) = '000a' 
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, CIEX7 as CIEXTOTAL
from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-31',101)  and CIEX7 IN ('R50', 'R50.1', 'R50.9')
and SUBSTRING(edad,1,4) = '000a' 
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, CIEX8 as CIEXTOTAL
from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-31',101)  and CIEX8 IN ('R50', 'R50.1', 'R50.9')
and SUBSTRING(edad,1,4) = '000a' 
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, CIEX9 as CIEXTOTAL
from EMERGENCIA where fecha between CONVERT(datetime, '2015-08-02',101) and  CONVERT(datetime, '2015-08-31',101)  and CIEX9 IN ('R50', 'R50.1', 'R50.9')
and SUBSTRING(edad,1,4) = '000a' 

/* Tabla de Consultorio externo : HIS */

SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita,CODIGO1,DES_COD1,'D1', UBIGEO
 FROM [SIGSALUD].[dbo].[HIS]
  WHERE (YEAR(FECHA)=2015 AND MONTH(FECHA) IN (8) AND CODIGO1 LIKE 'R50%' and DIAGNOST1 in ('d') )
   UNION ALL 
   
   SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita,CODIGO2,DES_COD2,'D2', UBIGEO
 FROM [SIGSALUD].[dbo].[HIS]
  WHERE (YEAR(FECHA)=2015 AND MONTH(FECHA) IN (8) AND CODIGO2 LIKE 'R50%' and DIAGNOST2 in ('d') )
    UNION ALL
   
  SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita, CODIGO3,DES_COD3,'D3', UBIGEO
 FROM [SIGSALUD].[dbo].[HIS]
  WHERE (YEAR(FECHA)=2015 AND MONTH(FECHA) IN (8) AND CODIGO3 LIKE 'R50%' and DIAGNOST3 in ('d') )
  
  union all
  SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita, CODIGO4,DES_COD4,'D4', UBIGEO
 FROM [SIGSALUD].[dbo].[HIS]
    WHERE (YEAR(FECHA)=2015 AND MONTH(FECHA) IN (8) AND CODIGO4 LIKE 'R50%' and DIAGNOST4 in ('d') )
    
  union all
  SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita, CODIGO5,DES_COD5,'D5', UBIGEO
 FROM [SIGSALUD].[dbo].[HIS]
    WHERE (YEAR(FECHA)=2015 AND MONTH(FECHA) IN (8) AND CODIGO5 LIKE 'R50%' and DIAGNOST5 in ('d') )
    
  UNION ALL
  SELECT mes,dia,fichafam,paciente,edad,tipoedad,hservicio,prof_cita, CODIGO6,DES_COD6,'D6', UBIGEO
 FROM [SIGSALUD].[dbo].[HIS]
    WHERE (YEAR(FECHA)=2015 AND MONTH(FECHA) IN (8) AND CODIGO6 LIKE 'R50%' and DIAGNOST6 in ('d'))

/* hospitalizacion */

select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX1 IN ('R50', 'R50.1', 'R50.9')
UNION ALL 
 select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX2 IN ('R50', 'R50.1', 'R50.9')
UNION ALL 
 select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX3 IN ('R50', 'R50.1', 'R50.9')
 UNION ALL
 select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX4 IN ('R50', 'R50.1', 'R50.9')
 UNION ALL
select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX5 IN ('R50', 'R50.1', 'R50.9')
 UNION ALL
 select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX6 IN ('R50', 'R50.1', 'R50.9')
 UNION ALL
 select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX8 IN ('R50', 'R50.1', 'R50.9')
 UNION ALL
 select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX9 IN ('R50', 'R50.1', 'R50.9')
UNION ALL
 select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX10 IN ('R50', 'R50.1', 'R50.9')
 UNION ALL
select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX11 IN ('R50', 'R50.1', 'R50.9')
UNION ALL
select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX12 IN ('R50', 'R50.1', 'R50.9')
 UNION ALL
select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX13 IN ('R50', 'R50.1', 'R50.9')
UNION ALL
select * from HOSPITALIZACION where FECHA1 between CONVERT(datetime, '2015-08-01',101) and CONVERT(datetime, '2015-08-31',101)
 and DX14 IN ('R50', 'R50.1', 'R50.9')
