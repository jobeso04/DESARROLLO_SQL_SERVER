
declare @lid_cita varchar(10) = '180019314'
declare @lid_historia varchar(20) = '0229713'
declare @lid_paciente varchar(10) = (select PACIENTE from [SIGSALUD].[dbo].[PACIENTE]  where HISTORIA = @lid_historia)
declare @lc_nombres varchar(90) =  (select nombres from [SIGSALUD].[dbo].[PACIENTE]  where HISTORIA = @lid_historia)
DECLARE @ld_fecha datetime = (select fecha from [SIGSALUD].[dbo].[cita] where CITA_ID =  @lid_cita)
declare @lct_hora char(10) = (select hora from [SIGSALUD].[dbo].[cita] where CITA_ID =  @lid_cita)
declare @lc_origen varchar(3) = 'CE'
DECLARE @lc_cosultorio char(6) = (select consultorio from [SIGSALUD].[dbo].[cita] where CITA_ID =  @lid_cita)
declare @lc_turno char(2) = (select TURNO_CONSULTA from [SIGSALUD].[dbo].[cita] where CITA_ID =  @lid_cita)
declare @lc_motivo char(2) = '01'
declare @lc_estado char(2) = '1'
declare @lc_seguro char(3) = (select seguro from [SIGSALUD].[dbo].[cita] where CITA_ID =  @lid_cita)
declare @lc_medico char(3) = (select medico from [SIGSALUD].[dbo].[cita] where CITA_ID =  @lid_cita)
declare @lc_numero char(2) = (select numero from [SIGSALUD].[dbo].[cita] where CITA_ID =  @lid_cita)
declare @lc_orden_grp char(1) = '0'
declare @ld_fecha_pago datetime = (select FECHA  from [SIGSALUD].[dbo].[pagoc] where ORDENID  =  @lid_cita)
declare @lc_est_pac char(1) = '.'
declare @lc_tipo_paciente varchar(1) = 'C'
INSERT INTO [SIGSALUD].[dbo].[ARCHIVO_MOV]([ID_CITA],[PACIENTE],[HISTORIA],[NOMBRES],[FECHA],[HORA],[ORIGEN],[CONSULTORIO],[TURNO],[MOTIVO],[ESTADO],[SEGURO],[MEDICO],[NUMERO],[ORDEN_GRP],[FECHA_PAGO],[EST_PAC],[TIPO_PACIENTE])
     VALUES (@lid_cita, @lid_paciente, @lid_historia,@lc_nombres,  @ld_fecha, @lct_hora, @lc_origen, @lc_cosultorio, @lc_turno, @lc_motivo, @lc_estado, @lc_seguro, @lc_medico, @lc_numero, @lc_orden_grp, @ld_fecha_pago,
     @lc_est_pac, @lc_tipo_paciente) 
update   [SIGSALUD].[dbo].[cita] set FECHA_PAGO = @ld_fecha_pago, ESTADO = '3' where CITA_ID = @lid_cita
