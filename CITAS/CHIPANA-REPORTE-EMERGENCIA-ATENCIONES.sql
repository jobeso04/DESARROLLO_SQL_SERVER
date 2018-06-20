use sigsalud


select convert(varchar(10), fecha, 101) as fecha_atencion, historia, nombres, nombre_diagnostico, nombre_consultorio, nombre_motivo, nombre_medico, edad, OBSERVACION1 as observacion, ciex4,ciex3, ciex2, ciex1, ciex5, ciex6
 from v_EMERGENCIA where fecha between  '01/09/2017' and '30/09/2017'
 and CONSULTORIO like '4%'  order by FECHA asc

select convert(varchar(10), a.FECHA,101) as FECHA, HISTORIA, NOMBRES, a.NOMCONSULTORIO, NOMBRE_MEDICO, edad, DX, upper(DX_DES) DIAGNOSTICO 
 from v_ATENCIONC a left join V_ATENCIOND b on a.ID_CITA = b.ID_CITA
 where a.CONSULTORIO like '4%' and a.FECHA between  '01/09/2017' and '30/09/2017' order by a.ID_CITA asc