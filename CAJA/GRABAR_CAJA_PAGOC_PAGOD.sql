/* para ver lo ingresado por caja pagoc - pagod */

use SIGSALUD
declare @lcfecha varchar(10) = '2017-08-02'
declare @lc_user varchar(13) = 'JCORTEZ'
declare @lid_paciente varchar(20) = '2008018325'
declare @lc_nombres varchar(200) = 'CORTEZ VALDIVIA JULIO RICARDO'
declare @lc_numero_boleta varchar(13) = '002-1011704'
declare @lc_caja varchar(2) = '02'
declare @lc_turno varchar(2) = 'GD'
declare @lc_consultorio varchar(10) = '9010'
DECLARE @lc_orden_farmacia varchar(13) = '1717096591'
declare @lc_id_pago char(8)  = convert(char(8), (select MAX(pagoid) as id_pago from PAGOC)  + 1)
declare @lc_turno_consultorio varchar(1) = '0'
INSERT INTO [SIGSALUD].[dbo].[PAGOC]([PAGOID], [FECHA],[FECHA_REGISTRO],[TIPO_DOCUMENTO],[NUMERO],[PACIENTE],[NOMBRE],[RUC],[DIRECCION],[CHEQUE],[BANCO], 
  [CAJA],[TURNO],[CATEGORIA],[TIPO_PAGO],[CONSULTORIO],[TURNO_CONSULTA], [MEDICO], [USUARIO],[SUBTOTAL2],[SUBTOTAL],[DESCUENTO],[IGV],[TOTAL],[MOTIVOANUL],[MODULO],[ORDENID],[LIQUIDACIONID],[ESTADO],
  [SYSINSERT],[SYSUPDATE],[SYSDELETE],[HORA_REGISTRO],[USUARIOORDEN],[ALMACEN],[TIPO_AUX],[NRO_EXONERACION],[ORIGEN],[CUENTAID])
VALUES (@lc_id_pago, CONVERT(datetime, @lcfecha, 101), GETDATE(), 'B', @lc_numero_boleta, @lid_paciente, @lc_nombres, '', '', '', '0', 
@lc_caja,  @lc_turno , 'A', 'C', @lc_consultorio, @lc_turno_consultorio, '0', @lc_user, 0, 0.69, 0, 0, 0.69, '', 'FARMACIA', @lc_orden_farmacia, '', '2',
   '', '', '',  CONVERT(varchar(8), GETDATE(), 108), 'JARELLANO', 'F', '', '', 'CE', '')

INSERT INTO [SIGSALUD].[dbo].[PAGOD]([PAGOID],[ITEM],[CANTIDAD],[COSTO],[PRECIO],[IGV],[DESCUENTO],[IMPORTE],[IMPORTE2])
SELECT @lc_id_pago AS  PAGOID, ITEM, CANTIDAD, COSTO, PRECIO, 0 as IGV, DESCUENTO, IMPORTE, IMPORTE2 FROM ORDEND WHERE ORDENID = '1717096591'


/*

SELECT * FROM PAGOC WHERE PAGOID = '17104748'
SELECT * FROM PAGOD WHERE PAGOID = '17104748'

*/ddd
/*
SELECT * FROM PAGOC ORDER BY FECHA_REGISTRO DESC

DELETE FROM PAGOC WHERE PAGOID = '17104748'
DELETE FROM PAGOd WHERE PAGOID = '17104748'

*/
/*
select * from PACIENTE where NOMBREs like 'cortez vald%'

*/