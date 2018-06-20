/* HORAS DE ATENCIONES QUE NO SE ACTUALIZAN  */

use SIGSALUD
DECLARE @lfechainicio varchar(10) = '2016-01-01'
declare @lidcita varchar(12) = '160008085'
 /*update atencionc set HORA_PROG = convert(time(7), (select HORA  from CITA where CITA_ID = @lidcita)), TIPO_CITA = (select TIPO_CITA  from CITA where CITA_ID = @lidcita),
 TURNO_CONSULTA = (select TURNO_CONSULTA  from CITA where CITA_ID = @lidcita), 
 TURNO =  (SELECT (CASE WHEN TURNO_CONSULTA = 'M' THEN 'Mañana' else 'Tarde' end) as Turno FROM CITA where CITA_ID = @lidcita)   where ID_CITA = @lidcita  */
 
/* select id_cita, NOMBRES from atencionc where hora_prog is null and fecha >= @lfechainicio  order by FECHA desc */
select ID_CITA, FECHA, NOMBRES, MEDICO, HORA_PROG, hora_aten, HORAI_ATEN, tipo_cita, TURNO from atencionc where ID_CITA = @lidcita
select cita_id, FECHA, NOMBRE, HORA, TIPO_CITA, TURNO_CONSULTA  from CITA where CITA_ID = @lidcita

 
SELECT * FROM ATENCIONC WHERE hora_prog is null ORDER BY FECHA DESC
SELECT * FROM ATENCIONC WHERE TURNO_CONSULTA = '' ORDER BY FECHA DESC

SELECT * FROM ATENCIONC WHERE ID_CITA = '160008085'

SELECT * FROM ATENCIONC WHERE ID_CITA = '160012168'
SELECT * FROM ATENCIONC WHERE ID_CITA = '160007932'

SELECT (CASE WHEN TURNO_CONSULTA = 'M' THEN 'Mañana' else 'Tarde' end) as Turno FROM CITA  WHERE CITA_ID = '160007932'

SELECT * FROM ATENCIONC  ORDER BY FECHA DESC

SELECT turno_consulta, hora, 
(case when turno_consulta = 'M' then convert(time(7), convert(int, substring(hora,1,2)) + 1) else convert(time(7), convert(int, substring(hora,1,2)) + 5) end)  
 FROM cita where CITA_ID = '160018602'
 
 use SIGSALUD
select * from ATENCIONC where  NOMBRES like 'echevarria hual%' order by FECHA desc
 
 use SIGSALUD
 delete from ATENCIONC where ID_CITA = '160001840'
 delete from ATENCIONd where ID_CITA = '160001840'
 
 select * from ATENCIONC where ID_CITA = '160001840'
 select * from ATENCIONd where ID_CITA = '160001840'
 select * from CITA where CITA_ID = '160001840'
 
