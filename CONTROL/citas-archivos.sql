

select * from CITA where  order by FECHA desc

select * from CITA where FECHA  order by FECHA desc

select * from v_CITA where FECHA = convert(datetime, '2018-08-01', 101)

select * from CITA where FECHA = convert(datetime, '2018-08-01', 101)

update CITA set fecha = convert(datetime, '2018-01-08', 101) where FECHA = convert(datetime, '2018-08-01', 101)


select convert(datetime, '2018-08-01', 101)

select * from CITA where FECHA = convert(datetime, '2018-11-01', 101)

update CITA set fecha = convert(datetime, '2018-01-10', 101)   where FECHA = convert(datetime, '2018-10-01', 101)


select * from CITA where FECHA = convert(datetime, '2018-11-01', 101)

select * from CITA where FECHA = convert(datetime, '2018-08-01', 101)
select * from CITA where FECHA = convert(datetime, '2018-09-01', 101)
select * from CITA where FECHA = convert(datetime, '2018-10-01', 101)



/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *
  FROM [SIGSALUD].[dbo].[ATENCIONC] order by FECHA  desc
  
  



select convert(datetime, '2018-01-06', 101)


select * from ARCHIVO_MOV where FECHA = convert(datetime, '2018-10-01', 101)

update ARCHIVO_MOV set fecha = convert(datetime, '2018-01-10', 101) where FECHA = convert(datetime, '2018-10-01', 101)

declare @lcfecha_origen varchar(10) = '2018-07-01'
declare @lcfecha_destino varchar(10) = '2018-01-07'
update ARCHIVO_MOV set fecha = convert(datetime, @lcfecha_destino, 101)  where FECHA = convert(datetime, @lcfecha_origen, 101)



select * from ARCHIVO_MOV  where MEDICO = 'SSR' and turno = 'T'  order by ID_CITA desc

select * from ARCHIVO_MOV  where MEDICO = 'SSR' and turno = 'T'  order by ID_CITA desc

select * from ARCHIVO_MOV  where fecha = CONVERT(datetime, '2018-10-01', 101)

update  ARCHIVO_MOV set  fecha = CONVERT(datetime, '2018-01-08', 101) where fecha = CONVERT(datetime, '2018-08-01', 101)

update  ARCHIVO_MOV set  fecha = CONVERT(datetime, '2018-01-10', 101) where fecha = CONVERT(datetime, '2018-10-01', 101)


select * from ARCHIVO_MOV  where MEDICO = 'SSR' and turno = 'T'  order by ID_CITA desc

THW


select * from ARCHIVO_MOV  where fecha = CONVERT(datetime, '2018-08-01', 101) 

MEDICO = 'SSR' and turno = 'T'


select * from ARCHIVO_MOV  where MEDICO = 'THW'  AND fecha = CONVERT(datetime, '2018-08-01', 101) 

select * from ARCHIVO_MOV  where MEDICO = 'THW' ORDER BY ID_CITA DESC

UPDATE  ARCHIVO_MOV SET FECHA_SAL = CONVERT(datetime, '2018-01-08', 101)  where FECHA_SAL = CONVERT(datetime, '2018-08-01', 101) 

UPDATE  ARCHIVO_MOV SET FECHA_SAL = CONVERT(datetime, '2018-01-08', 101)  where FECHA_SAL = CONVERT(datetime, '2018-08-01', 101) 


select * from ARCHIVO_MOV  where FECHA = CONVERT(datetime, '2018-08-01', 101)

select * from ARCHIVO_MOV  where FECHA = CONVERT(datetime, '2018-08-01', 101)

UPDATE ARCHIVO_MOV  SET FECHA = CONVERT(datetime, '2018-01-08', 101) where FECHA = CONVERT(datetime, '2018-08-01', 101)

