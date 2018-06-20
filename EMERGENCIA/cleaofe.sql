EXEC SP_GUARDAR_NOTAS_ENFERMERIA '15042132','2008012879','SCC','03','12 paciente',1


/****
12.00  paciente en observacion despierta  lucidas, glasgow 15, ventilando espontaneamente FV con parametros normales , sale de UTS y se le mantiene en observacion. se encuentra cion Ev como via.
13.00  evaluado con resultados de laboratorio , no hay ningun cambio, continua en observacion por indicacion de Dr Callo.
14.00 paciente en observacion no presenta ninguna molestia, se moviliza para el baño sin  novedad,
16.00 se le comunica al medico para evaluacion con resultados de laboratorio, por que paciente refiere dolor en el pecho.
17.00 Dr Yangaly evalua y deja orden de Rx y administrar tratamiento.
17.15 se le administra tramadol 50 mg subcutaneo por indicacion del medico.
17.30 se lleva a Rx y le toman placa de torax, luego medico evalua.
18.00 paciente se levanta al baño sin problemas.
se le brinda comodidad y confort, paciente despierta, glasgow 15, ventilando  al ambiente.
PA 122/77 mmhg , SAT O296% ,FC 89 X , FR 20X.



***/

declare @emergencia_id char(8) = '15042132'
declare @paciente char(10) = '2008012879'
declare @profesional varchar(8) = 'SCC'
declare @procedimiento varchar(20) = '20'
declare @detalle varchar(2500) = '12.00  paciente en observacion despierta  lucidas, glasgow 15, ventilando espontaneamente FV con parametros normales , sale de UTS y se le mantiene en observacion. se encuentra cion Ev como via.
13.00  evaluado con resultados de laboratorio , no hay ningun cambio, continua en observacion por indicacion de Dr Callo.
14.00 paciente en observacion no presenta ninguna molestia, se moviliza para el baño sin  novedad,
16.00 se le comunica al medico para evaluacion con resultados de laboratorio, por que paciente refiere dolor en el pecho.
17.00 Dr Yangaly evalua y deja orden de Rx y administrar tratamiento.
17.15 se le administra tramadol 50 mg subcutaneo por indicacion del medico.
17.30 se lleva a Rx y le toman placa de torax, luego medico evalua.
18.00 paciente se levanta al baño sin problemas.
se le brinda comodidad y confort, paciente despierta, glasgow 15, ventilando  al ambiente.
PA 122/77 mmhg , SAT O296% ,FC 89 X , FR 20X.'

declare @estado integer = 1
DECLARE @lugar char(5) 
DECLARE @id_eme_det_web varchar(8)	

SELECT @lugar = ESTADO_PACIENTE FROM EMERGENCIA WHERE EMERGENCIA_ID=@emergencia_id

SELECT @id_eme_det_web = dbo.FN_GENERAR_EMERGENCIA_DET_WEB()

INSERT INTO EMERGENCIA_DET_WEB (ID_EME_DET_WEB,EMERGENCIA_ID,PACIENTE,PROFESIONAL,PROCEDIMIENTO,DETALLE,LUGAR,TIPO_PROCESO,FECHA,HORA,ESTADO)
	VALUES (@id_eme_det_web,@emergencia_id,@paciente,@profesional,@procedimiento,@detalle,@lugar,'P02',GETDATE(),GETDATE(),@estado);
	
	
	select * from EMERGENCIA_DET_WEB order by fecha_hora_reg desc


select * from EMERGENCIA_DET_WEB where id_eme_det_web = '15049814' 
update EMERGENCIA_DET_WEB set estado = '0', DETALLE = '' where id_eme_det_web = '15049814'
