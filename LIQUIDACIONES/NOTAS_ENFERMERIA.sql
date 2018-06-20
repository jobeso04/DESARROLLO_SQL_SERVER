USE SIGSALUD
SELECT  DATALENGTH(DETALLE)  AS CONTAR_DETALLE, ID_EME_DET_WEB, emergencia_id, PROFESIONAL, detalle  
FROM V_EMERGENCIA_DET_WEB where TIPO_PROCESO = 'P01' AND ESTADO = '1' ORDER BY DATALENGTH(DETALLE) DESC


USE SIGSALUD
SELECT  DATALENGTH(DETALLE)  AS CONTAR_DETALLE, ID_EME_DET_WEB, emergencia_id, PROFESIONAL, detalle  
FROM V_EMERGENCIA_DET_WEB where TIPO_PROCESO = 'P02' AND ESTADO = '1' ORDER BY DATALENGTH(DETALLE) DESC

SELECT * FROM EMERGENCIA_DET_WEB WHERE DATALENGTH(DETALLE) < 100

DELETE FROM EMERGENCIA_DET_WEB WHERE ID_EME_DET_WEB IN ('15000050', '15000051', '15000052', '15000063', '15000075', '15000112', '15000116', '15000134', '15000139', '15000149',
'15000150')


SELECT * FROM EMERGENCIA_DET_WEB WHERE FECHA <= CONVERT(DATETIME, '2015-04-01', 101)


USE SIGSALUD
SELECT *
FROM V_EMERGENCIA_DET_WEB where TIPO_PROCESO = 'P02' AND ESTADO = '1' ORDER BY DATALENGTH(DETALLE) DESC


select * from EMERGENCIA where EMERGENCIA_ID = '16027945'

USE SIGSALUD
SELECT TOP 1 DATALENGTH(DETALLE)  AS CONTAR_DETALLE
FROM V_EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '17015426' AND TIPO_PROCESO = 'P02' AND ESTADO = '1' ORDER BY DATALENGTH(DETALLE) DESC



SELECT ID_EME_DET_WEB, CODIGO_PROFESIONAL, PROFESIONAL, CONVERT(VARCHAR(10), FECHA, 103) AS FECHA, CONVERT(VARCHAR(5), HORA) AS HORA, FECHA_HORA_REG, EMERGENCIA_ID, 
 substring(DETALLE,1,250) as MOSTRAR_DETALLE, substring(DETALLE,1,250) + ' ' + substring(DETALLE,251,250) 
     + ' ' + substring(DETALLE,502,250) AS DETALLE, SUBSTRING(DETALLE,1,1545)  AS VER_DETALLE,  DATALENGTH(DETALLE)  AS CONTAR_DETALLE, TIPO_PROCESO, ESTADO, PACIENTE  
FROM V_EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '17015426' AND TIPO_PROCESO = 'P02' AND ESTADO = '1' ORDER BY FECHA_HORA_REG DESC

select IdEmergenciaDetalleProcedimiento, IdEmergenciaDetalle, IdProcedimientoEnfermeria, Cantidad, UPPER(b.DESCRIPCION) AS DESCRIPCION 
 from dbo.EmergenciaDetalleProcedimiento a left join dbo.EMERGENCIA_PROCE_ENF b on convert(int, b.CODIGO) = a.IdProcedimientoEnfermeria
 where IdEmergenciaDetalle = '17041332'


select * from   dbo.EMERGENCIA_PROCE_ENF

select * from dbo.EmergenciaDetalleProcedimiento

delete from dbo.EmergenciaDetalleProcedimiento where IdEmergenciaDetalleProcedimiento = 

  select * from dbo.EmergenciaDetalleProcedimiento where IdEmergenciaDetalle = '17041332'

select * from dbo.EMERGENCIA_PROCE_ENF

select * from EMERGENCIA_DET_WEB  where id_eme_det_web = '17009765'

/* delete from EMERGENCIA_DET_WEB  where id_eme_det_web = '17009765' */

delete from EMERGENCIA_DET_WEB  where id_eme_det_web IN ('16017323', '17014196', '17018588', '16133034')



select CUENTAID, CASE WHEN CODCPT IS NULL THEN '' ELSE CODCPT END AS CODCPT, ITEM, NOMBRE, CANTIDAD, PRECIO, IMPORTE, DESCUENTO, TOTAL, estado
   from V_CUENTADET where CUENTAID = '1715414' AND ESTADO = '2' ORDER BY CODCPT DESC
   
   UPDATE CUENTADET
   
   SELECT * FROM CUENTADET
   
   DELETE  FROM [SIGSALUD].[dbo].[CUENTADET] WHERE CUENTAID = ? AND ITEM = ?LITEM
   
   SELECT * FROM V_CUENTADET
   
select CUENTAID, CASE WHEN CODCPT IS NULL THEN '' ELSE CODCPT END AS CODCPT, ITEM, NOMBRE, CANTIDAD, PRECIO, IMPORTE, DESCUENTO, TOTAL, estado
   from V_CUENTADET where ESTADO = '0' CUENTAID = '1715414 ' ORDER BY CODCPT DESC
   
   

select * from ITEM where NOMBRE like '%electrocar%'    order by ITEM desc


SELECT * FROM EMERGENCIA_DET_WEB WHERE ID_EME_DET_WEB = '17040327'

SELECT * FROM dbo.EmergenciaDetalleProcedimiento WHERE IdEmergenciaDetalle = '17040327'

SELECT * FROM dbo.EMERGENCIA_PROCE_ENF

SELECT * FROM dbo.ProcedimientoEnfermeria

SELECT *, LEN(descripcion) as des FROM dbo.ProcedimientoEnfermeria order by LEN(descripcion) desc



  select IdEmergenciaDetalleProcedimiento, IdEmergenciaDetalle, a.IdProcedimientoEnfermeria, Cantidad, UPPER(substring(b.DESCRIPCION,1,200)) AS DESCRIPCION 
    from dbo.EmergenciaDetalleProcedimiento a left join dbo.ProcedimientoEnfermeria b on convert(int, b.IdProcedimientoEnfermeria) = a.IdProcedimientoEnfermeria
     where IdEmergenciaDetalle = '17040327'
     
     
      SELECT IdProcedimientoEnfermeria, UPPER(substring(DESCRIPCION,1,200)) AS DESCRIPCION  FROM dbo.ProcedimientoEnfermeria
      order by DESCRIPCION asc
      
      select * from V_CITA where CONSULTORIO = '1034' and  FECHA = CONVERT(datetime, '2017-05-24', 101) and turno_consulta = 'T' ORDER BY CONVERT(INT, NUMERO) ASC
      
      
     use SIGSALUD
      select * from CONSULTORIO where NOMBRE like 'medici%'









 
