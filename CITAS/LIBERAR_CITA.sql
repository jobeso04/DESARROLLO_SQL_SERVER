

select * from cita where CITA_ID = '160147087'

select * from v_cita where CITA_ID = '160147086'
select * from v_cita where CITA_ID = '160147087'


select * from ARCHIVO_MOV where ID_CITA = '160147087'


UPDATE CITA SET FECHA_OTORGA=NULL, TIPO_PACIENTE='N', TIPO_CITA='C', PACIENTE='', NOMBRE=' ', SEGURO='0',
	ESTADO='1', HORA_OTORGA='', USUARIO=NULL WHERE ESTADO='2' AND FECHA=@fecha_hoy AND FECHA_OTORGA!=@fecha_hoy AND TURNO_CONSULTA=@turno;