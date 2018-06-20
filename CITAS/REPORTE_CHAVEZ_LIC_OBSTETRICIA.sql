use sigsalud
DECLARE @lcfecha1 varchar(10) = '2017-05-01'
DECLARE @lcfecha2 varchar(10) = '2017-05-31'
/* DECLARE @lcconsultorio varchar(5) =  ('4041', '4043', '2021', '1011', '1012', '1022', '3031', '3032', '3033','2022', '2029') */

SELECT A.ESTADO, case A.estado when '1' then 'CITA PENDIENTE' WHEN '2' THEN 'CITA OTORGADA, PERO NO PAGA O NO FUA' WHEN '3' THEN 'PACIENTE PENDIENTE DE ATENCION' WHEN '4' THEN 'PACIENTE ATENDIDO'
 WHEN '5' THEN 'PACIENTE NO ASISTIO A SU CITA' ELSE 'NO DEFINIDO' END AS SITUACION, NOMBRE_CONSULTORIO,   fecha, CITA_ID, turno_consulta, HORA, historia, NOMBRE, NOMBRE_MEDICO, b.DX, UPPER(b.DX_DES) AS DESCRIPCION  FROM v_CITA a left join ATENCIOND b on a.CITA_ID = b.ID_CITA 
where FECHA between convert(datetime, @lcfecha1, 101) and convert(datetime, @lcfecha2, 101) and CONSULTORIO in ('4041', '4043', '2021', '1011', '1012', '1022', '3031', '3032', '3033','2022', '2029')  order by fecha asc


/*
select * from CONSULTORIO where tipo = 'C' order by NOMBRE asc
select * from CONSULTORIO where CONSULTORIO in ('4041', '4043', '2021', '1011', '1012', '1022', '3031', '3032', '3033','2022', '2029')
*/

