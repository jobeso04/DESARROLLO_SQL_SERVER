/* PARA CAMBIAR EL EXAMEN DE RAYOS X */

/* selecionar el paciente para modificar su examen de laboratorio con fecha diferente */
use SIGSALUD
declare @lidemergencia varchar(13) = '16037343'
select * from orden_examen_web where ID_ATENCION = @lidemergencia
select * from ORDEN_EXAMEN_DET_WEB where ID_orden_examen = (select ID_ORDEN_EXAMEN from orden_examen_web where ID_ATENCION = @lidemergencia) 
select * from ITEM where NOMBRE like '%RODILLA %' and activo = '1' order by ITEM desc



select * from [SIGSALUD].[dbo].[V_EXAMENES_LAB] where NOMBRE like '%examen de orina%'


use SIGSALUD
select * from ITEM where ACTIVO = '1' and GRUPO_RECAUDACION = '04' and NOMBRE like '%examen de orina%'

select * from ITEM where LEN(nombre) > 99 and activo = '1' order by ITEM desc

select * from ORDEN_EXAMEN_DET_WEB where ID_orden_examen = (select ID_ORDEN_EXAMEN from orden_examen_web where ID_ATENCION = @lidemergencia) 


select  CODCPT, nombre, GRUPO_RECAUDACION from ITEM where NOMBRE like '%EXAMEN DE ORINA%' and ACTIVO = '1' and substring(item,1,1) = '6' order by ITEM desc

select CODCPT, nombre from ITEM where NOMBRE like '%ORINA%'  and substring(item,1,1) = '5' order by ITEM desc

select item, CODCPT, nombre from ITEM where NOMBRE like '%ORINA%'  and substring(item,1,1) = '5' order by ITEM desc
81005
select * from V_EXAMENES_RAYOSX where nombre like 'EXAMEN RADIOLÓGICO%' order by nombre asc


SELECT * FROM ORDEN_EXAMEN_DET_WEB WHERE ID_ORDEN_EXAMEN_DET = '1471664411'

UPDATE ORDEN_EXAMEN_DET_WEB SET ID_EXAMEN = '62271',  NOMBRE_EXAMEN = 'EXAMEN RADIOLÓGICO BILATERAL DE CADERA, MÍNIMO DOS INCIDENCIAS DE CADA CADERA (2 PLACAS)'
  WHERE ID_ORDEN_EXAMEN_DET = '1471664411'
  
  
  EXEC SP_GET_EMERGENCIA_DET_WEB_10 '16037343'


select * from ITEM where NOMBRE like '%RODILLA %' and activo = '1' order by ITEM desc

