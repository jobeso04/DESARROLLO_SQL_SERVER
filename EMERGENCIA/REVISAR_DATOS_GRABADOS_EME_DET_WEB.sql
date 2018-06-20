use SIGSALUD
go
select * from EMERGENCIA_DET_WEB order by FECHA_HORA_REG desc

SELECT MAX(ID_EME_DET_WEB) AS IDWEB FROM EMERGENCIA_DET_WEB


/********************/

EXEC SP_GUARDAR_NOTAS_ENFERMERIA ?,?,?,?,?,?




select ID_EME_DET_WEB,EMERGENCIA_ID,PACIENTE,PROFESIONAL,PROCEDIMIENTO,DETALLE,LUGAR,TIPO_PROCESO,FECHA,HORA,ESTADO, FECHA_HORA_REG from EMERGENCIA_DET_WEB Order by FECHA_HORA_REG desc

update EMERGENCIA_DET_WEB set procedimiento = '3' where ID_EME_DET_WEB = '15044843'

@emergencia_id char(8),
@paciente char(10),
@profesional varchar(8),
@procedimiento varchar(20),
@detalle TEXT,
@estado integer
AS BEGIN
   SET NOCOUNT ON
	-- Declara las variables que usaras en los chequeos error para cada instruccion.
	DECLARE @ErrorVar INT;
	DECLARE @RowCountVar INT;
	DECLARE @id_eme_det_web varchar(8);	
	DECLARE @lugar char(5);
	SET LANGUAGE Spanish
	SELECT @lugar = ESTADO_PACIENTE FROM EMERGENCIA WHERE EMERGENCIA_ID=@emergencia_id;
	SELECT @id_eme_det_web = dbo.FN_GENERAR_EMERGENCIA_DET_WEB();
	INSERT INTO EMERGENCIA_DET_WEB (ID_EME_DET_WEB,EMERGENCIA_ID,PACIENTE,PROFESIONAL,PROCEDIMIENTO,DETALLE,LUGAR,TIPO_PROCESO,FECHA,HORA,ESTADO)
	VALUES (@id_eme_det_web,@emergencia_id,@paciente,@profesional,@procedimiento,@detalle,@lugar,'P02',GETDATE(),GETDATE(),@estado);
	
	
SELECT IdProcedimientoEnfermeria, Descripcion FROM ProcedimientoEnfermeria
SELECT * FROM ProcedimientoEnfermeria
	
	
	