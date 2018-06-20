 USE SIGSALUD
  SELECT IDSEPIDEMI, CANIO, CNROSEMANA, DFECHAINICIO, DFECHAFIN, CUSUARIO, 
 DFECHAREGISTRO, 'SEMANA ' + CNROSEMANA + ' - ' + RIGHT('0' + RTRIM(CONVERT(CHAR(2), DAY(DFECHAINICIO), 20)),2)  + '/' + RIGHT('0' + RTRIM(CONVERT(CHAR(2), MONTH(DFECHAINICIO), 20)),2)   
  + ' - ' + RIGHT('0' + RTRIM(CONVERT(CHAR(2), DAY(DFECHAFIN), 20)),2)  + '/' + RIGHT('0' + RTRIM(CONVERT(CHAR(2), MONTH(DFECHAFIN), 20)),2)   + '/' + CONVERT(CHAR(4), YEAR(DFECHAFIN), 101) AS SEMA   FROM SEPIDEMI
  where canio = '2017'
  
  
  
  
exec SP_LIQUIDA_NUEVA_CUENTA '" & getPaciente.Text & "','" & ExtraeCodigo(getSeguroliq.Text) & "',0,'" & ExtraeCodigo(getConsultorio.Text) & "','" & getObservacion2.Text & "','" & getFecha.Text & "',1,'" & getHora.Text & "','" & getNombres.Text & "','EM','" & gv_Usuario & "','.','.'

exec SP_LIQUIDA_NUEVA_CUENTA '2017272394', '02','0', '2051', '', '31/03/2017', '1', '12:05:00', 'QUILCA VILLANUEVA JACK NICOLAS', 'EM', 'AVARGASP', '', ''


O
ALTER PROCEDURE [dbo].[SP_LIQUIDA_NUEVA_CUENTA]
@paciente varchar(20),
@seguro varchar(2),
@empresa varchar(2),
@consultorio varchar(6),
@observa varchar(100),
@fecha varchar(10),
@estado varchar(1),
@hora varchar(11),
@nombre varchar(100),
@origen varchar(2),
@usuario varchar(10),
@nrofua varchar(13),
@presta varchar(3)





select * from paciente where nombre like 'QUILCA VILL%'

         EjecutaSql rsAux, ssql
         If rsAux.Fields(0) = 1 Then
            sSql1 = "Update EMERGENCIA SET CUENTAID='" & rsAux.Fields(2) & "' WHERE EMERGENCIA_ID='" & getEmergencia_Id.Text & "'"
            EjecutaSql rsAuxt, sSql1
            
         

exec SP_LIQUIDA_NUEVA_CUENTA '2017272394', '02','0', '2051', '', '31/03/2017', '1', '12:05:00', 'QUILCA VILLANUEVA JACK NICOLAS', 'EM', 'AVARGASP', '', ''


1720646

SELECT * FROM EMERGENCIA WHERE EMERGENCIA_ID = '17012938'

Update EMERGENCIA SET CUENTAID='1720646' WHERE EMERGENCIA_ID= '17012938'              