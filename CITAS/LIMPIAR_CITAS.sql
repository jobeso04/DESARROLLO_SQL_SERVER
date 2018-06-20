use sigsalud

select * from TMP_CONSUL
select TURNO_CONSULTA from cita group by TURNO_CONSULTA 

SELECT TURNO_CONSULTA 
     FROM V_CITA WHERE CONSULTORIO = '1014' AND MONTH(FECHA) = 5 AND YEAR(FECHA) = 2017 and DAY(fecha) = 3 group by TURNO_CONSULTA 
  
 

 SELECT fecha_programacion, CITA_ID, estado, nombre, NOMBRE_SEGURO, NOMBRE_TIPO_CITA, TURNO_CONSULTA , HORA, NUMERO
     FROM V_CITA WHERE CONSULTORIO = '1014' AND MONTH(FECHA) = 5 AND YEAR(FECHA) = 2017 and DAY(fecha) = 3
     
     
     
      and turno_consulta = 'M' order by turno_consulta, NUMERO asc
      
      
select * from CONSULTORIO where NOMBRE like 'odon%'

5012


SELECT * FROM CONSULTORIO_PARAMETRO WHERE CONSULTORIO = '5011'

SELECT '5012' AS [CONSULTORIO]
      ,[TURNO_CONSULTA]
      ,[OLD]
      ,[HORARIO_DE]
      ,[HORARIO_A]
      ,[ATENCIONES_DIA]
      ,[CITADOS_N]
      ,[CITADOS_C]
      ,[CITADOS_P]
      ,[CITADOS_O]
      ,[TIEMPO_N]
      ,[TIEMPO_C]
      ,[TIEMPO_P]
      ,[TIEMPO_O]
      ,[HORAS]
      ,[PRECIO_C]
      ,[PRECIO_N]
      ,[TIPO_PAGO]
      ,[ITEM_C]
      ,[ITEM_N]
      ,[PRINT_HORA]
      ,[CUPO_WEB]
      ,[NO_MOSTRAR_HORA_NUMERO]
  FROM [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO] WHERE CONSULTORIO = '5011'
  
    SELECT TURNO_CONSULTA, COUNT(TURNO_CONSULTA) as cantidad_turnos
     FROM V_CITA WHERE CONSULTORIO = ?lidconsul AND MONTH(FECHA) = ?lmes_consul AND YEAR(FECHA) = ?lanio_consul and DAY(fecha) = ?lndiafecha group by TURNO_CONSULTA 
     
sELECT TURNO_CONSULTA, COUNT(TURNO_CONSULTA) as cantidad_turnos
     FROM V_CITA     group by TURNO_CONSULTA 
  

USE SIGSALUD
select numero from  CITA group by NUMERO order by NUMERO asc
select TURNO_CONSULTA from  cita group by TURNO_CONSULTA order by TURNO_CONSULTA asc
select hora from  CITA group by hora order by hora asc
select consultorio from  CITA group by CONSULTORIO order by CONSULTORIO asc
select medico from  CITA group by medico order by medico asc
select seguro from  CITA group by seguro order by seguro asc
select estado from  CITA group by estado order by estado asc
select hora_otorga from  CITA group by HORA_OTORGA order by HORA_OTORGA asc
select tipo_solicitud from  CITA group by tipo_solicitud order by tipo_solicitud asc


update CITA set HORA = '00:39' where HORA = '0:039'
update CITA set HORA = '09:00' where HORA = '9:00'


select * from CITA where HORA = '' order by FECHA desc



select numero, * from  CITA where NUMERO in ('83', '84') order by FECHA desc

select TURNO_CONSULTA, hora, numero, * from  CITA where consultorio = '6081' and fecha = convert(datetime, '2013-04-26', 101)  

select NUMERO from CITA where LEN(numero)<2 and NUMERO not in ('') group by NUMERO 

select NUMERO from CITA where LEN(numero)<2 and NUMERO not in ('') group by NUMERO  

select cita_id, NUMERO from CITA where numero = ''


83
84

select cita_id, NUMERO, ESTADO, * from CITA where NUMERO in ('T', '', '.', '|', '} ', '0', '1', '3', '4', '7', '8', '9', 's', 'T', 'M', 'I', 'N') order by FECHA desc


update CITA set NUMERO = 'T' where CITA_ID in ('140043661', '100010686')

update CITA set TURNO_CONSULTA = 'a' where CITA_ID in ('140043661', '100010686')




select * from  CITA 
 WHERE  CONSULTORIO = '5090' AND MONTH(FECHA) = 1 AND YEAR(FECHA) = 2014 and DAY(fecha) = 28 and turno_consulta = 'M' AND convert(int, NUMERO) = 1
 

 select * from  CITA 
 WHERE  CONSULTORIO = '5020' AND MONTH(FECHA) = 5 AND YEAR(FECHA) = 2017 and DAY(fecha) = 3 and turno_consulta = 'M' AND convert(int, NUMERO) = 1
 
select convert(int, NUMERO) as ent, NUMERO, * from  CITA 
 WHERE  CONSULTORIO = '5020' AND MONTH(FECHA) = 5 AND YEAR(FECHA) = 2017 and DAY(fecha) = 3 and turno_consulta = 'M'
 
 
select NUMERO from CITA where 
 substring(numero,1,1) not in ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9') and substring(numero,1,2) not in ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9') 
 and NUMERO not in ('') group by NUMERO  

 
  
  tdatos.cita_id, fecha_mostrar, estado, turno_consulta, numero, nombre, nombre_consultorio, nombre_medico, nombre_seguro
  
   select CITA_ID, FECHA, CONVERT(VARCHAR(10), FECHA, 103) AS FECHA_MOSTRAR, ESTADO, TURNO_CONSULTA, NUMERO, NOMBRE, NOMBRE_CONSULTORIO, NOMBRE_MEDICO, NOMBRE_SEGURO, CONSULTORIO from [SIGSALUD].[dbo].[V_CITA]
            where numero IN ('T') ORDER BY FECHA DESC
            
            
SELECT * FROM [SIGSALUD].[dbo].[V_CITA] ORDER BY FECHA DESC



SELECT * FROM PAGOC WHERE NUMERO = '002-1007006'

SELECT * FROM PAGOD WHERE PAGOID = '17080232'
SELECT * FROM PAGOC WHERE PAGOID = '17080232'
UPDATE PAGOC SET TOTAL = 0 WHERE PAGOID = '17080232'
UPDATE PAGOD SET IMPORTE = 0 WHERE PAGOID = '17080232'

DELETE FROM PAGOD WHERE PAGOID = '17080232'
DELETE FROM PAGOC WHERE PAGOID = '17080232'

use sigsalud
select * from CITA where ESTADO = '2'

select ID_CITA, PACIENTE, HISTORIA, NOMBRES, CONVERT(varchar(10), fecha, 101) as FECHA, HORA, B.NOMBRE
from archivo_mov A LEFT JOIN CONSULTORIO B ON B.CONSULTORIO = A.CONSULTORIO  where id_cita in (select cita_id from CITA where ESTADO = '2') order by FECHA desc


CITA_ID, CONVERT(VARCHAR(10), FECHA, 103) AS FECHA_MOSTRAR, ESTADO, TURNO_CONSULTA, NUMERO, NOMBRE, NOMBRE_CONSULTORIO, NOMBRE_MEDICO, NOMBRE_SEGURO from [SIGSALUD].[dbo].[V_CITA]

select ID_CITA AS CITA_ID, PACIENTE, HISTORIA, NOMBRES, CONVERT(varchar(10), fecha, 101) as FECHA_MOSTRAR, TURNO, HORA from V_ARCHIVO_MOV1 where id_cita in (select cita_id from CITA where ESTADO = '2') order by FECHA desc


declare @lc_lista_citas  table (cita_id varchar(50))
 insert into @lc_lista_citas 
 select cita_id from CITA where ESTADO = '2'
select * from @lc_lista_citas 


select * from archivo_mov where id_cita in (select cita_id from CITA where ESTADO = '2')

declare @lc_lista_de_ciex  table (id_ciex varchar(20)); insert @lc_lista_de_ciex(id_ciex) 
    values('A00.9'),('A09'), ('A04.9'), ('A09.9'), ('A00'),  ('A01'), ('A01.1'), ('A01.2'), ('A01.3'), ('A01.4'), ('A02'), ('A03'), ('A03.9'), ('A04.5'), 
      ('A05'), ('A06'), ('A06.2'), ('A07'), ('A01.4'), ('A08'), ('A08.2'), ('A08.3'), ('A08.4')
declare @lc_lista_de_ciex_asociados  table (id_ciex varchar(20)); insert @lc_lista_de_ciex_asociados(id_ciex) 
    values('E86'),('R57.1'), ('K56.0'), ('E87.2'),('0')
    
    


USE BDPERSONAL
SELECT * FROM ASISTENCIA 

USE BDPERSONAL
SELECT * FROM MAESTRO WHERE NOMBRE LIKE 'CAÑARI%'


SELECT * FROM ASISTENCIA WHERE CODIGO = '084717' AND MES = 11 AND AÑO = 2016



SELECT a.Nombre, b.Nombre FROM 
ServicioDepartUnidad a left join DepartamentoUnidad b on a.IdDepartUnid = b.IdDepartUnid WHERE IdServDepartUnid = 42

SELECT * FROM ServicioDepartUnidad WHERE IdServDepartUnid = 42

SELECT IdDepartUnid, * FROM DepartamentoUnidad WHERE IdDepartUnid = 14


use SIGSALUD
/* select * from pagoc  where  */

select TIPO_PAGO  from pagoc  group by TIPO_PAGO


select * from PRECIO where ITEM = '63362'
select * from ITEM where CODCPT = '97597' and ACTIVO = '1'

select * from ITEM where CODCPT = '15878' and ACTIVO = '1'
select * from precio where item = '60229' 
 
    
  
  